# Nmap y sus diferentes modos de escaneo
Herramienta de escaneo de red gratuita y de código abierto que se utiliza en pruebas de penetración (pentesting) para explorar y auditar redes y sistemas informáticos.

Con Nmap, los profesionales de seguridad pueden __identificar los hosts conectados a una red, los servicios que se están ejecutando en ellos y las vulnerabilidades que podrían ser explotadas por un atacante__. La herramienta es capaz de detectar una amplia gama de dispositivos, incluyendo enrutadores, servidores web, impresoras, cámaras IP, sistemas operativos y otros dispositivos conectados a una red.

Asimismo, esta herramienta posee una variedad de funciones y características avanzadas que permiten a los profesionales de seguridad adaptar la misma a sus necesidades específicas. Estas incluyen técnicas de escaneo agresivas, capacidades de scripting personalizadas, y un conjunto de herramientas auxiliares que pueden ser utilizadas para obtener información adicional sobre los hosts objetivo.

---

#route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         172.16.222.2    0.0.0.0         UG    100    0        0 ens160
172.16.222.0    0.0.0.0         255.255.255.0   U     100    0        0 ens160

---

_man nmp_ => para visualizar el manual de NMAP.

__-p__ : Para escanear puertos abiertos.

_#nmap -p- 172.16.222.135_ => Esto engloba todo el rango entero de puertos.

Un puerto puede estar ABIERTO, CERRADO o FILTRADO ()

_#nmap --top-ports 500 172.16.222.135_ => __500 puertos mas comunes!__

_#nmap --top-ports 500 --open 172.16.222.135_ => __con --open te aseguras que sean siempre ABIERTOS los ports!__

_#nmap -p- --open 172.16.222.135 -v_ => __Con -v veras todo lo que esta sucediendo con el porcentaje!__

_#nmap -p- --open 172.16.222.135 -v -n_ => __Con -n Iniciaras con Scaneo DNS para que sea mas RAPIDO!__

_#nmap -p- -T5 --open 172.16.222.135 -v -n_ => __Con -T fija una plantilla de Tiempo para el renderizado para ir mas lento o mas rapido!__

- T0 = paranoico -> MAS LENTO;
- T1 = sigiloso;
- T2 = amable;
- T3 = normal;
- T4 = agresivo;
- T5 = loco -> MAS RAPIDO;

_#nmap -p- -T5 -sT --open 172.16.222.135 -v -n_ => __-sT lanza un SYN de forma que si un port esta close contesta con RST. Open contesta con SYN/ACK, para posteriormente a nuestro lado contestar con un ACK__ ya que __-sT : sondeo TCP__

_#nmap  --top-ports 500 --open -sU --open 172.16.222.135 -v -n -Pn_ => __El parametro -Pn : para q de por hecho que el host esta vivo. Para no que no coloque el descubrimiento de Host!__ y __-sU : sondeo de UDP protocol__ y el escaneo va mucho mas lento

---

tcpdump -i ens160 -w Captura.cap -v
=> Se guarda el archivo!

wireshark Captura.cap &>/dev/null & disown

---

nmap -sn 172.16.222.0/24

---

nmap -O 172.16.222.135
---
Esta técnica utiliza paquetes ICMP para determinar la disponibilidad de hosts y puede ser útil en situaciones donde el tráfico de TCP o UDP es bloqueado o filtrado.
---
vhost -> Esta opción es utilizada para realizar un ataque de fuerza bruta contra el servidor web, buscando subdominios o virtual hosts.
---
La __enumeración de puertos mediante descriptores de archivo__ /dev/tcp es una técnica alternativa de escaneo de puertos que manipula descriptores de archivo en sistemas operativos tipo Unix para acceder a puertos remotos y determinar si están abiertos o cerrados.
---
Esta técnica envía paquetes TCP ACK a los puertos que se están investigando y analiza las respuestas para determinar si los puertos están abiertos, cerrados o filtrados por un firewall.
---
¿Qué cabecera debo usar con Wfuzz si deseo enumerar subdominios mediante un ataque de fuerza bruta sobre un dominio dado? -> Host