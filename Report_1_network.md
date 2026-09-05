## Tentáculos Operativos — Mapa de Infraestructura (05-Sep-2026)

### Principio
Longcheer opera una infraestructura DISTRIBUIDA en dos AS chinos
(AS4812/Unicom + AS37963/Alibaba) con separación funcional:
- Unicom = TRANSPORTE (endpoint wg0, reverse DNS, R&D)
- Alibaba = RESOLUCIÓN (forward DNS de slion.net)

### Tentáculos confirmados
1. 117.24.6.122:51820 (Unicom/Fujian) → WireGuard
2. dns.fz.fj.cn (Unicom/Fujian) → Reverse de 117.24.6.122
3. dns21.hichina.com (Alibaba/Hangzhou) → Forward de slion.net
4. sh-16-52.rnd.longcheer.net (Unicom/Shanghai) → R&D
5. online.sh.cn (Unicom/Shanghai) → Contexto local AS17621
6. 2620:fe::9 (Quad9) → DoH preferido del kernel
7. 45.231.168.6:123 → NTP trigger
8. 52.84.217.119 (AWS) → Fallback/MDIP

### Por qué no está en la web
- Dominio nuevo (slion.net, SOA ago-2026)
- Endpoint UDP (no indexable por Shodan/Censys)
- DNS Hichina (WHOIS genérico)
- Reverse Unicom provincial (no es hosting público)
- No hay web, API ni documentación pública


 ; <<>> DiG 9 <<>> @9.9.9.9 117.24.6.122 A
 ;; global options: +cmd
 .			1678 IN	NS l.root-servers.net.
 .			1678 IN	NS m.root-servers.net.
 .			1678 IN	NS a.root-servers.net.
 .			1678 IN	NS b.root-servers.net.
 .			1678 IN	NS c.root-servers.net.
 .			1678 IN	NS d.root-servers.net.
 .			1678 IN	NS e.root-servers.net.
 .			1678 IN	NS f.root-servers.net.
 .			1678 IN	NS g.root-servers.net.
 .			1678 IN	NS h.root-servers.net.
 .			1678 IN	NS i.root-servers.net.
 .			1678 IN	NS j.root-servers.net.
 .			1678 IN	NS k.root-servers.net.
 ;; 
 
 in-addr.arpa.		172800 IN NS a.in-addr-servers.arpa.
 in-addr.arpa.		172800 IN NS b.in-addr-servers.arpa.
 in-addr.arpa.		172800 IN NS c.in-addr-servers.arpa.
 in-addr.arpa.		172800 IN NS d.in-addr-servers.arpa.
 in-addr.arpa.		172800 IN NS e.in-addr-servers.arpa.
 in-addr.arpa.		172800 IN NS f.in-addr-servers.arpa.
 in-addr.arpa.		86400 IN DS 47054 8 2 (
 				5CAFCCEC201D1933B4C9F6A9C8F51E51F3B39979058A
 				C21B8DF1B1F281CBC6F2 )
 in-addr.arpa.		86400 IN DS 53696 8 2 (
 				13E5501C56B20394DA921B51412D48B7089C5EB6957A
 				7C58553C4D4D424F04DF )
 in-addr.arpa.		86400 IN DS 54956 8 2 (
 				E0E2BF5CFBD66572CA05EC18267D91509BA6A9405AF0
 				5C3FD4141DFA45200C08 )
 in-addr.arpa.		86400 IN DS 63982 8 2 (
 				AAF4FB5D213EF25AE44679032EBE3514C487D7ABD99D
 				7F5FEC3383D030733C73 )
 in-addr.arpa.		86400 IN RRSIG DS 8 2 86400 (
 				20260918060000 20260905050000 39561 arpa.
 				oDXjxI8wtTIIEypCDrVn8HdVYiElIviTl2YaurozddSs
 				IfQ8HwP9MZjBBFehM26mp5DdW0w/ctpXrnLTh5vSVlTj
 				8pfvuSh0PyDkzPQKSHZm4Kcpu2eTboGwRrejRaJV3SGR
 				6nJh6b8ncHPaKGXphDW0z4Xlt+THWe6c9LxZLmDwWZBv
 				9aQpYBhQ/OSqaNKMQGV6sWMZxJ4r75leObDUnw48To+i
 				5Uj6sZOpaKYWdRfgDdjjGW/uM7BzbApSs48cTUw33Z06
 				pqYgXfxzZY3To1R/S4zYwsQpKtFXPGsd/1AGMcE8gdE7
 				rzg2U2ez1ijzwLiR93RlATQi5MzisNMCXg== )
 ;; Received 914 bytes from 199.7.91.13#53(d.root-servers.net) in 26 ms
 
 117.in-addr.arpa.	86400 IN NS rirns.arin.net.
 117.in-addr.arpa.	86400 IN NS ns1.apnic.net.
 117.in-addr.arpa.	86400 IN NS apnic.authdns.ripe.net.
 117.in-addr.arpa.	86400 IN NS ns2.apnic.net.
 117.in-addr.arpa.	86400 IN NS ns3.lacnic.net.
 117.in-addr.arpa.	86400 IN DS 53038 13 2 (
 				0CC5273E2A69B111B56D164F9CCCCBF983E0CA67BE2B
 				B455040F0A9067C13C06 )
 117.in-addr.arpa.	86400 IN RRSIG DS 8 3 86400 (
 				20260923145419 20260902175548 31765 in-addr.arpa.
 				OmS7xmyawnygx+/v3ozppIwIUMNSzXdEZTYepLdVnRis
 				gOeFjKwG90SwafQy4BgTsJrCEi5XGYR+o0AnkGqJQh8d
 				oALCKG8ic4Ypgg3hXe+DSpSRgpkbG3JOsvxyEbCVQDHa
 				Gf4tokwj08xrSSwt0b7PK39cRFyghedAR9RUOMY= )
 ;; Received 402 bytes from 193.0.9.1#53(f.in-addr-servers.arpa) in 13 ms
 
 24.117.in-addr.arpa.	86400 IN NS dns.fz.fj.cn.
 24.117.in-addr.arpa.	86400 IN NS dns1.fz.fj.cn.
 24.117.in-addr.arpa.	3600 IN	NSEC 240.117.in-addr.arpa. NS RRSIG NSEC
 24.117.in-addr.arpa.	3600 IN	RRSIG NSEC 13 4 3600 (
 				20260918130326 20260903113326 50171 117.in-addr.arpa.
 				FIJDaH9hDZIslfSIV6gOXoWRmDz0864UZjBExBq1W8Kj
 				Owips4MI/rqICWSfXz2i6B1CJjL885YVQBIAe/z/Hw== )
 ;; Received 253 bytes from 2a13:27c0:30::9#53(apnic.authdns.ripe.net) in 13 ms
 
 24.117.in-addr.arpa.	86400 IN SOA dns.fz.fj.cn. root.dns.fz.fj.cn. (
 				2017051203 ; serial
 				10800      ; refresh (3 hours)
 				3600       ; retry (1 hour)
 				604800     ; expire (1 week)
 				86400      ; minimum (1 day)
 				)
 ;; Received 154 bytes from 202.101.98.55#53(dns.fz.fj.cn) in 225 ms

 
 ; <<>> DiG 9 <<>> @9.9.9.9 dns.fz.fj.cn A
 ; (1 server found)
 ;; global options: +cmd
 .			25945 IN NS e.root-servers.net.
 .			25945 IN NS i.root-servers.net.
 .			25945 IN NS a.root-servers.net.
 .			25945 IN NS f.root-servers.net.
 .			25945 IN NS m.root-servers.net.
 .			25945 IN NS k.root-servers.net.
 .			25945 IN NS j.root-servers.net.
 .			25945 IN NS c.root-servers.net.
 .			25945 IN NS b.root-servers.net.
 .			25945 IN NS l.root-servers.net.
 .			25945 IN NS h.root-servers.net.
 .			25945 IN NS d.root-servers.net.
 .			25945 IN NS g.root-servers.net.
 .			25945 IN RRSIG NS 8 0 518400 (
 				20260917190000 20260904180000 57780 .
 				KMUaQnX3HcY2O5VWRXOczqYa8P4V8xgPWD3hDMTBFnkb
 				2OR+XZMYbFkki7g6kh71k7DBIa0cpdwnruA1rP2r0UtV
 				ybc2upC1Sgpw4hSgTXI+Km5QInUHRVJUH+EFMpBbDi92
 				f4P3EhZVt9gdW2Z9YWqbMkqFvJthgQvHifwdQWju0f35
 				Ml4AHhnKYWc8fqkwCJxk8tw+Fzy1XjmzZQuYkIvckUm6
 				C6XFhTiSrWG68zDMCh8wKXAk5dDgtJLHVBEz34NOMTzA
 				rlFbXhm7xbHWSNsPRaj3Qm4Oe5oZNDpzjVScdLTzu1nY
 				frSPJobq6MJWCG/mgbkxNjSuci2iTmeGMw== )
 ;; Received 525 bytes from 9.9.9.9#53(9.9.9.9) in 5 ms
 
 cn.			172800 IN NS a.dns.cn.
 cn.			172800 IN NS b.dns.cn.
 cn.			172800 IN NS c.dns.cn.
 cn.			172800 IN NS d.dns.cn.
 cn.			172800 IN NS e.dns.cn.
 cn.			172800 IN NS ns.cernet.net.
 cn.			86400 IN DS 33094 8 2 (
 				CCCF13ED73A83244F7D2936F0B6C3507D85C3EBC5E1B
 				E4FB644064BC5B5FE3B2 )
 cn.			86400 IN RRSIG DS 8 1 86400 (
 				20260918050000 20260905040000 57780 .
 				BAy0ehYjrT7CqmQ6VVO8Cm3ThsbiNRw8RpFOafOp3gAD
 				2tWVgJHzBcArrAFIQuRHTAS5mdaBzNn7m0/h2itLkmqJ
 				Hc0lY9q9B3OvwiMqh7EtHls1IG+sM4nUJMBU6NKvDDmd
 				DPG2aae97nvE4B+b04e68/SYlCFjNDE7S8hlY+H+xws6
 				GOjF6VscYcv40D/dIeLn4JH8/dBYJn5W5NtWmHF+3Tav
 				OGblhiEXrpsxatkvMUEWYo2ZQYom0amDtbsK/Req6+SX
 				LBuRTUaemLidLJgJvwFO0UXT2vfIn0L+JXjbRowEM+H1
 				zkHVeFY9yqTMX6doi5VwQFQYgfhT2UL3pw== )
 ;; Received 723 bytes from 2001:500:1::53#53(h.root-servers.net) in 3 ms
 
 fz.fj.cn.		86400 IN NS dns.fz.fj.cn.
 fz.fj.cn.		86400 IN NS dns1.fz.fj.cn.
 634e0nthqk6d5r1jdq6vcafo6o42q1jv.fj.cn.	21600 IN RRSIG NSEC3 8 3 21600 (
 				20261004085042 20260904084024 64704 fj.cn.
 				BebGLTlOswOBwO9IKbvv9RM2gsgy5djdobpfpF1/bFJv
 				tAyyKUX/5innT5QWYKWnLqp4iS8/6wtyCcfzNt8e6+6k
 				v2v7jIuhdmLKt/EUz5nOzT4mnmVVmivj1L7XbJHZ+Ii6
 				0/cquBUgvYlkul1CpDGbcr/XhZXx7ar+EL1kW+E= )
 634e0nthqk6d5r1jdq6vcafo6o42q1jv.fj.cn.	21600 IN NSEC3 1 1 10 AEF123AB (
 				C32HCACCHEG6A334R3LLPCCEV9VG4TRL
 				NS SOA RRSIG DNSKEY NSEC3PARAM )
 c32hcaccheg6a334r3llpccev9vg4trl.fj.cn.	21600 IN RRSIG NSEC3 8 3 21600 (
 				20261001092655 20260901082655 64704 fj.cn.
 				MJYfy3r1c9/lmjQQrPRKyO5lLPULCz9ecO12hTJF8uOu
 				L1LbkJjjWon19eRTk+1mOlK5bJJTbB5ZrAVopWSWiM73
 				UheQ8UP72J3y3+ubLUXjXPSIqBp2xGdO9RT+WjJXbsf1
 				TKPZP221POLjKeDzFOdh6s2B20G5Z8kOqoBDd4Q= )
 c32hcaccheg6a334r3llpccev9vg4trl.fj.cn.	21600 IN NSEC3 1 1 10 AEF123AB (
 				LRPI0SRTB708H0TNJ8QKKO3E8OHKTEHI
 				TXT RRSIG )
 ;; Received 689 bytes from 203.119.27.1#53(c.dns.cn) in 180 ms
 
 dns.fz.fj.cn.		86400 IN A 218.85.157.99
 dns.fz.fj.cn.		86400 IN A 202.101.98.55
 ;; Received 101 bytes from 240e:14:e000:ffff::1#53(dns1.fz.fj.cn) in 226 ms

 
 
