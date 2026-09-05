# X.509 en Android: Estándar vs. Implementación Longcheer

## 1. Lo "normal" (AOSP estándar)

Un certificado X.509 en un dispositivo Android estándar:

- **Emisor**: CA pública (DigiCert, Let's Encrypt, Google, etc.)
- **Visibilidad**: Aparece en Configuración → Seguridad → Certificados
- **Validez**: 1-3 años (máximo 39 meses por CAB Forum)
- **Revocable**: El usuario puede eliminar CA de confianza
- **Separación de funciones**:
  - `platform.x509.pem` → firma APKs del sistema
  - `releasekey.x509.pem` → firma firmware (solo OTA updater)
  - `media.x509.pem` → firma apps de media
  - `shared.x509.pem` → firma apps compartidas
  - `testkey.x509.pem` → solo builds de desarrollo
- **Cadena de confianza**: Hoja → Intermedia → Raíz pública
- **Kernel keyring**: Carga certs para verificación de módulos
  (dm-verity, IMA), NO para validación de tráfico de red
- **TLS**: Usa cacerts/ del sistema (visibles y editables por usuario)
- **DNS**: El usuario elige resolver (53, DoT, DoH). El kernel
  NO resuelve DNS por cuenta propia.

**En resumen**: El X.509 estándar es una **firma de integridad**.
El usuario controla qué CAs confía. Las funciones están separadas.
La validez es corta. Todo es visible y revocable.

---

## 2. Lo que hace Longcheer (Moto G04s T606)

### 2.1 Identidad única, múltiples claves

Longcheer opera **2 pares RSA 2048** bajo **un solo DN**:
`C=CN, ST=ShangHai, L=ShangHai, O=Longcheer, OU=Longcheer,
CN=Longcheer, emailAddress=release@Longcheer.com`

| Clave | SKI | Firma |
|-------|-----|-------|
| OTA | 9E:E3:19:ED:5C:72:2E:14:C6:7C:A2:CF:B2:66:96:02:EC:83:B9:78 | Firmware, imágenes, OTA packages |
| Platform | 97:B6:E1:F1:B2:AC:DB:DA:80:5C:56:B0:4E:82:D0:52:83:3C:8F:7B | 460/460 APKs del sistema |

Generadas a **1 segundo de diferencia** (07:31:05 y 07:31:06 UTC,
15-sep-2023) → batch generation en pipeline CI/CD.

### 2.2 Self-signed CA con validez de 27 años

- **Subject == Issuer** → No depende de ninguna CA externa
- **CA:TRUE (critical)** → Es una CA raíz, no un certificado hoja
- **Validez**: 2023-09-15 → 2051-01-31 (27 años)
- **Implicación**: Nunca expira durante la vida útil del dispositivo.
  No hay renovación. No hay rotación. Es la **única** raíz.

### 2.3 Invisible para el usuario

- **NO** está en `/system/etc/security/cacerts/`
- **NO** aparece en Configuración → Seguridad → Certificados
- **SÍ** está en `/system/user/` (o equivalente Unisoc)
- **Consumidor**: OTA updater, kernel keyring, X509Util (Chromium)
- El usuario **no puede** verla, revocarla ni reemplazarla sin root

### 2.4 Ancla universal de confianza

El mismo DN Longcheer ancla **cinco capas** del dispositivo:

| Capa | Mecanismo |
|------|-----------|
| **Firmware** | `releasekey.x509.pem` en `otacerts.zip` valida OTA |
| **Aplicaciones** | Clave platform firma 460/460 APKs (v3) |
| **Tráfico TLS** | `X509Util` (Chromium) + `AndroidSocketAdapter` (OkHttp)
  usan el KeyStore que contiene este cert para validar HTTPS/DoH |
| **Kernel** | `rpkdi` (remoteprovisioningd) lo carga en trusted keyring |
| **Interfaz** | Sidebar (`persistent=true`, `INJECT_EVENTS`) opera
  bajo la confianza de la clave platform |

### 2.5 El kernel resuelve DNS por sí mismo

En un dispositivo estándar, el kernel NO hace queries DNS.
En el Moto G04s T606:

- **UID -1** (kernel) hace flood de DNS a `2620:fe::9:443` (Quad9 DoH)
  desde la IP del túnel wg0 (`fd00:2:fd00:1:fd00:1:fd00:1`)
- **9 SYNs en 74ms** con puertos aleatorios (retry loop sin backoff)
- El NTP es **prerequisito** (Δ = 3s post-sync para rpkdi)
- El X.509 valida el canal DoH (TLS 1.3 sobre 443)

### 2.6 Secuestro de rkpd (T1574)

`remoteprovisioningd` (servicio legítimo de eSIM) es **repurposado**:
1. Pide cert a `remoteprovisioning.googleapis.com`
2. Firma token
3. Handshake WireGuard → `fulguris.slion.net:117.24.6.122:51820`
4. NS: `dns21.hichina.com` (Alibaba Cloud, Hangzhou)

El X.509 es la **credencial** que hace válido este handshake.

### 2.7 Dual control con Amazon

| | Longcheer | Amazon (MDIP) |
|---|---|---|
| **DN** | `O=Longcheer, CN=Longcheer` (ShangHai) | `O=Amazon Services LLC` (Las Vegas) |
| **Clave** | 9E:E3 / 97:B6 (2023→2051) | 00ac60dafe... (2009→2033) |
| **Firma** | v3 | v2 |
| **Canal** | wg0 → slion.net (China) | WebSocket → AWS Frankfurt |
| **Ruta** | `/system/priv-app/` | `/system/operator-app/priv-app/` |
| **Función** | Firmware + UI + túnel + kernel | Fleet management remoto |

Dos CAs, dos países, dos claves. **No interoperables criptográficamente.**
El usuario está expuesto a ambos simultáneamente.

---

## 3. Tabla comparativa final

| Aspecto | AOSP Estándar | Longcheer (Moto G04s) |
|---------|---------------|----------------------|
| **Emisor** | CA pública (DigiCert, Google) | Self-signed (Longcheer/ShangHai) |
| **Validez** | 1-3 años | **27 años** (2023→2051) |
| **Visibilidad** | Configuración → Certificados | **Invisible** (system/user) |
| **Revocable** | Sí (usuario puede eliminar) | **No** (sin root) |
| **Nº de claves** | 5 (platform, media, release, shared, test) | **2** (OTA + Platform) |
| **DN** | Distinto por clave | **Mismo DN** para ambas |
| **Kernel DNS** | No aplica | **Sí** (UID -1, flood DoH) |
| **TLS ancla** | cacerts/ (visibles) | KeyStore oculto + rpkdi |
| **Cadena** | Hoja → Intermedia → Raíz pública | **Self-signed** (1 nivel) |
| **Firmware** | Firma por releasekey | Mismo DN que las 460 apps |
| **Segundo control** | No existe | Amazon MDIP (WebSocket AWS) |
| **Infraestructura** | OEM + Google | Longcheer (China) + Amazon (US) |

---

## 4. Conclusión

El X.509 en un dispositivo Android estándar es un **mecanismo de
integridad**: verifica que un APK o imagen no fue alterado.
El usuario elige en qué CAs confía. Todo es visible y revocable.

En el Moto G04s T606, Longcheer convierte el X.509 en una
**raíz de control operativo**:

- Una sola identidad (ShangHai) firma **todo**: firmware, 460 apps,
  tráfico TLS, kernel keyring, interfaz.
- El kernel **resuelve DNS por sí mismo** (UID -1) y el X.509
  valida el canal cifrado.
- El NTP es **trigger temporal** de rpkdi, que a su vez activa
  el túnel WireGuard a infraestructura en China (Alibaba/Unicom).
- El usuario **no puede** ver, revocar ni reemplazar la CA.
- Un segundo actor (Amazon) opera un canal independiente
  (WebSocket a AWS) bajo su propia CA, sin interdependencia
  criptográfica con Longcheer.

**El X.509 deja de ser una firma y se convierte en la columna
vertebral de una arquitectura de control total sobre el dispositivo.**   
