# Descubrimiento de equipoos en la red local (ARP e ICMP)

hostname -I

---

## nmap -sn 172.16.222.0/24                             
Starting Nmap 7.95 ( https://nmap.org ) at 2025-08-30 11:56 -04
Nmap scan report for 172.16.222.1
Host is up (0.00019s latency).
MAC Address: B2:BE:83:96:E9:65 (Unknown)
Nmap scan report for 172.16.222.2
Host is up (0.00034s latency).
MAC Address: 00:50:56:E1:3B:3B (VMware)
Nmap scan report for 172.16.222.254
Host is up (0.00027s latency).
MAC Address: 00:50:56:EB:05:8A (VMware)
Nmap scan report for 172.16.222.138
Host is up.
Nmap done: 256 IP addresses (4 hosts up) scanned in 2.31 seconds

---

## arp-scan -I eth0 --localnet --ignoredups
Equipos configurados en la red.

Interface: eth0, type: EN10MB, MAC: 00:0c:29:0b:89:98, IPv4: 172.16.222.138
Starting arp-scan 1.10.0 with 256 hosts (https://github.com/royhills/arp-scan)
172.16.222.1	b2:be:83:96:e9:65	(Unknown: locally administered)
172.16.222.2	00:50:56:e1:3b:3b	VMware, Inc.
172.16.222.254	00:50:56:eb:05:8a	VMware, Inc.

3 packets received by filter, 0 packets dropped by kernel
Ending arp-scan 1.10.0: 256 hosts scanned in 1.973 seconds (129.75 hosts/sec). 3 responded

---

## netdiscover -i eth0
De forma automatica empieza a hace run barrido para mascaras de tipo B partiendo de la x.x.0.0
- Ayuda a tratar de descubrir mas equipos configurados
- O para Clase B

---

## El cliente se confunde en SEGMENTACIÓN y SUBNETING
En ocaciones se descubren mas equipos.
- En caso de ser de tipo C. -> 255.255.255.0
- Es recomendable igualmente tomar de clase B -> 255.255.0.0

> Con el fin de encontrar una mayor cantidad de equipos cuando segmentaron la red. 
> En el caso que se equivoquen a la hora de realizar el Subneting e hicieran Segmentación se redes.

---

Otra forma como Script como en el archivo ["_hostDiscovery.sh1_"](hostDiscovery.sh)
