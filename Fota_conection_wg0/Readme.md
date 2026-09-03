fd00:2:fd00:1:fd00:1:fd00:1 -> 2606:4700:4700::1111:853 UID -1 Desconocido TLS Error/Inalcanzable = wg0 Key_56ef134d intentando DoT
fd00:2 -> 2a03:2880:: (facebook/edge-mqtt) :80 / :443 UID 10227 = probe fallback cuando bloqueas 853
Baseline SOA: longcheer.net 2026082509 / slion.net 2026082709 

Trigger: Date&time Use location ON + Wifi scanning
Secuencia: 02:08:31 wg0 fail -> 02:17:32 NTP 10.215.173.1 -> 45.231.168.6:123 + 2.android.pool.ntp.org 68/180 UID 1000 -> 02:17:35 rkpd 10213

Conclusión legal:
El dispositivo con qogirl6 TEE V2.0.1 + WireGuard 1.0.0 Key 56ef134d establece túnel wg0/tun0 fd00:2:: hacia slion.net/longcheer.net sin interacción del usuario, usando UID -1 kernel y UID 10227 sistema, evadiendo DNS 853 vía QUIC/okio. Probado con PCAP 13-jun-2026 y dig SOA 03-sep-2026.
