# Técnicas de evasión de Firewalls (MTU, Data Length, Source Port, Decoy, etc.)
#nmap -p22 172.16.222.2 -f -> __-f realiza un fragmentado__

AL estar FRAGMENTADO luego son reensamblados para Interpretar que le esta diciendo. Se REENSAMBLA [SYN]
En ocaciones los FIREWALL al estar fragmentado, los puertos ocultos se pueden llegar a ver.

Un IDS es un Intruse Detection System : Sistema de Detección de Intrusos [!]. Para evitar accesos no AUTORIZADOS se pueden __ELUDIR__ de las siguientes maneras:
- -D <señuelo1,señuelo2[,ME],...>: Disimular el análisis con señuelos
- -S <Dirección_IP>: Falsificar la dirección IP origen
- -e <interfaz>: Utilizar la interfaz indicada
- -g/ --source-port <num_puerto>: Utilizar el número de puerto dado
- --data-length <num>: Agregar datos al azar a los paquetes enviados, manipula el tamaño del paquete.
- --ttl <val>: Fijar el valor del campo time-to-live (TTL) de IP
- --spoof-mac <dirección mac/prefijo/nombre de fabricante>: Falsificar la dirección MAC
- --badsum: Enviar paquetes con una suma de comprobación TCP/UDP falsa

#nmap -p22 172.16.222.1 --spoof-mac Dell -Pn : __Recordar que -Pn ayuda a decir que el Host esta VIVO para que no se caiga la conexión con la nueva MAC cambiada__. Aun asi puede detectar que el PUERTO 22 en este caso no este abierto, en caso que si. Por lo tanto _no siempre es buena practica cambiar la MAC_. En CIERTOS CASOS FIREWALL ESTAN CONFIGURADOS PARA DARLE PERMISOS A CIERTAS MAC/EQUIPOS. __POR LO QUE SI SE DA CON ESAS MAC DE EQUIPOS SE PUEDE INGRESAR__.

#arp-scan -I eth0 --localnet : Para saber las mac de los equipos de la red.
 
SYN > (RST (closed) | ACK) > ACK

SYN > (RST (closed) | ACK > RST) : Hace que la comunicación no concluya, __LA CIERRA FORZADAMENTE__ y __GANA PUNTOS DE AGILIDAD DEL ESCANEO__.

- --min-rate : __Tramitas una cantidad de paquetes como minimo o sino seria MAX. Por ejemplo: --min-rate 5000;
 
#nmap -p- --open -sS --min-rate 5000 -v -n -Pn 172.16.222.1 => Lectura rapida de todos los puertos con un min rate de 5000

-sS/sT/sA/sW/sM: Análisis TCP SYN/Connect()/ACK/Window/Maimon