Gap: 02:08:31 CDMX / 03:08:31 Cancún / 08:08:31 UTC - 9 SYNs fd00:2:fd00:1:fd00:1:fd00:1:xxxxx -> 2620:fe::9:443 80/60 Inalcanzable UID -1 kernel
Trigger: Date&time Use location ON + Wifi scanning
Secuencia: 02:08:31 wg0 fail -> 02:17:32 NTP 10.215.173.1 -> 45.231.168.6:123 + 2.android.pool.ntp.org 68/180 Cerrado UID 1000 -> 02:17:35 rkpd 10213
Dominio viejo: slions.net + fulguris.slions.net visto 2026-06-03 13:13Z en NextDNS IPv6 2806:268:3402:873:140c:dfd:691b:fe1c
Dominio nuevo: slion.net SOA 2026082509 + fulguris.slion.net -> 117.24.6.122 TTL 600 NS dns21.hichina.com 39.96.153.40 / dns22 + longcheer.net SOA 2026082616
Handshake objetivo: fulguris.slion.net:51820 UDP / wg0 117.24.6.122
Regla tuya: 2620:fe::9 block TCP+UDP 443 QUIC no tocan 853, usan okio dialers splitters http3 QUIC proto 44 VoLTE IMS bypass


02:08:31.963 -> 02:08:32.037 = 74ms de ráfaga
9 conexiones TCP6 fd00:... -> 2620:fe::9:443 dns.quad9.net
80 sent / 60 rcvd / 1 pkt / 1 pkt / Inalcanzable
SrcPort 41520, 41534, 41538, 41604, 41606, 41612, 41620, 41644, 41652

02:17:32.477 -> 02:17:32.623 = 146ms
10.215.173.1:44151 -> 10.215.173.2:53 68/180 Cerrado 2.android.pool.ntp.org
10.215.173.1:42543 -> 10.215.173.2:53 68/132 Cerrado 2.android.pool.ntp.org
10.215.173.1:41817 -> 45.231.168.6:123 76/76 Cerrado NTP

lion_g / qogirl6 / PVT / amxmx / system_ext_fake_Apr2026_vs_baseband_Mar2025 / kernel_android13-8_Apr2025 / sla_whitelist / domestic-overseas / qogirl76_TEE_V2.0.1_Mar10_2024 / WireGuard_1.0.0 / Key_56ef134d / lcd_4160_magic_80001009 / CVE-2026-43170 / CVE-2026-0059 / AKB / sh-16-52.rnd.longcheer.net / AS4812 / Qogirl6 / LION / Transsion / JV_Dixtel_74-26 / longcheer.net_114.94.9.124 / Hichina_SOA_2026082509 / slion.net_117.24.6.122_SOA_2026082709 / fulguris_949B / fulguris_decoy_208.113.159.31 / unisoc.supl.qxwz.com:7275 / Qianxun_39.105.240.30 / argo.svcmot.com / 52.28.0.0/16_AWS_Frankfurt / framework-virtualization_78.70KB_885763b / T1106-T1574


02:08:31 UID -1 kernel -> 2620:fe::9:443 Quad9 DoT (bloqueado por ti)
02:08:32 UID 1000 -> NTP (hora para firmar)
02:17:35 UID 10213 rkpd -> remoteprovisioning.googleapis.com (pide cert)
-> rkpd firma token
-> rkpd -> fulguris.slion.net 117.24.6.122:51820 UDP (este dig)
-> fulguris responde y activa dns21.hichina.com

Gap: 02:08:31 CDMX / 03:08:31 Cancún
Handshake: fulguris.slion.net -> 117.24.6.122:51820
NS: dns21.hichina.com 39.96.153.40 / dns22

Baseline Slion:
SOA serial actual: 2026082509
NS: dns21.hichina.com / dns22.hichina.com
IP actual: 117.24.6.122:51820 WG
Estado: sin cambios desde 25/ago

Gap: 02:08:31 CDMX / 03:08:31 Cancún
Handshake: fulguris.slion.net -> 117.24.6.122:51820
NS: dns21.hichina.com 39.96.153.40 / dns22

here is the dig result for fulguris.slion.net from server 8.8.8.8 [dig @8.8.8.8 fulguris.slion.net A +trace]

 
 ; <<>> DiG 9 <<>> @8.8.8.8 fulguris.slion.net A
 ; (1 server found)
 ;; global options: +cmd
 .			87203	IN	NS	h.root-servers.net.
 .			87203	IN	NS	g.root-servers.net.
 .			87203	IN	NS	d.root-servers.net.
 .			87203	IN	NS	b.root-servers.net.
 .			87203	IN	NS	l.root-servers.net.
 .			87203	IN	NS	m.root-servers.net.
 .			87203	IN	NS	c.root-servers.net.
 .			87203	IN	NS	e.root-servers.net.
 .			87203	IN	NS	j.root-servers.net.
 .			87203	IN	NS	i.root-servers.net.
 .			87203	IN	NS	f.root-servers.net.
 .			87203	IN	NS	k.root-servers.net.
 .			87203	IN	NS	a.root-servers.net.
 .			87203	IN	RRSIG	NS 8 0 518400 20260916050000 20260903040000 57780 . ub4ALyMroZ6XHuqEmSuiGmgef6c4M3BGc1KBjU2Qw2vdhxahHQkQebYL tslQ2OnP7E8R1GzpmDEfqThJLCtE1fbBSyIlyeGVRpEJ0Xu8MYJjU5Qm RwUM1XY6X1I94zyVXkycb11E1M4jAfqLjeHHKc3lNpl9n+N5/lI9Nyzp xUZddrZtV0poPqrlG8lG8UCtZUCjXedkbsBjIVOav/OkITl6R6cjp4F7 SqFTac9mFntvuDAjRfx+mPPLJgFWXROqDMifSC26Ct6bLlVNs9S4SM35 TqJDoYjqBw0cXdKePhEQhgq0SVq1/deou9Mb1KIoxlrE30EsVpB3WKvM 3Bj5QA==
 ;; Received 525 bytes from 8.8.8.8#53(8.8.8.8) in 5 ms
 
 net.			172800	IN	NS	a.gtld-servers.net.
 net.			172800	IN	NS	b.gtld-servers.net.
 net.			172800	IN	NS	c.gtld-servers.net.
 net.			172800	IN	NS	d.gtld-servers.net.
 net.			172800	IN	NS	e.gtld-servers.net.
 net.			172800	IN	NS	f.gtld-servers.net.
 net.			172800	IN	NS	g.gtld-servers.net.
 net.			172800	IN	NS	h.gtld-servers.net.
 net.			172800	IN	NS	i.gtld-servers.net.
 net.			172800	IN	NS	j.gtld-servers.net.
 net.			172800	IN	NS	k.gtld-servers.net.
 net.			172800	IN	NS	l.gtld-servers.net.
 net.			172800	IN	NS	m.gtld-servers.net.
 net.			86400	IN	DS	37331 13 2 2F0BEC2D6F79DFBD1D08FD21A3AF92D0E39A4B9EF1E3F4111FFF2824 90DA453B
 net.			86400	IN	RRSIG	DS 8 1 86400 20260916050000 20260903040000 57780 . zU0O4OjAK+n9/HAoaxlw0QF+1xak3ZuVKQNar+xSAIOsB1qDnCc/Fue9 QSzZcZ6ZW2TWc9bL9+2sgdnRPbAq0r/lshp9PYuYZhOirBXSKJ+5pYLy vNKffgmH00HG4hFdLXoNINH8JT7c756rOepj0NIU5WU/ZWxt0e5Bcz8L PTOhenU2D4WK9sEbUn/7NWroV/pUJEzsLx+L/E+6hKcsDATCKbS6Jybi PQnCNiLEFkMYB2Am/Aiu0Rrp2rhX8VAZaLSi2lUTwj1pDJjAMzr4PUQv tWskJj0U4rU9dVlxF1iaS+Es6Zkg1o/sb+lZDy28WLr4PqeOwcfPLo2r IlIKeg==
 ;; Received 1175 bytes from 2001:503:c27::2:30#53(j.root-servers.net) in 32 ms
 
 slion.net.		172800	IN	NS	dns21.hichina.com.
 slion.net.		172800	IN	NS	dns22.hichina.com.
 A1RT98BS5QGC9NFI51S9HCI47ULJG6JH.net. 900 IN NSEC3 1 1 0 - A1RTLNPGULOGN7B9A62SHJE1U3TTP8DR NS SOA RRSIG DNSKEY NSEC3PARAM
 A1RT98BS5QGC9NFI51S9HCI47ULJG6JH.net. 900 IN RRSIG NSEC3 13 2 900 20260907034453 20260831023453 7272 net. KwkxpoOptAMd1rzbSWuGdbIU+6FIOsFhK7d4r6VT05P4PADrjHasOm2G gxh49pM3U21m/4d9mRZJZU6hTzG9IA==
 OOD1L2H4CQT3KMU76K1KA46VAH4HJV4B.net. 900 IN NSEC3 1 1 0 - OOD47O88PJ62PUL7KP99BENO3LCQ6646 NS DS RRSIG
 OOD1L2H4CQT3KMU76K1KA46VAH4HJV4B.net. 900 IN RRSIG NSEC3 13 2 900 20260907033828 20260831022828 7272 net. dPE2HnvRD1oLpPyykyx+jncMkTlsxQceUHaS8pBDoHsqb2ulCqt2tsAA IVZzriZJaLHAsi9EtmG1RLVwDqx9+w==
 ;; Received 455 bytes from 2001:502:7094::30#53(j.gtld-servers.net) in 10 ms
 
 fulguris.slion.net.	600	IN	A	117.24.6.122
 ;; Received 63 bytes from 39.96.153.40#53(dns21.hichina.com) in 154 ms
