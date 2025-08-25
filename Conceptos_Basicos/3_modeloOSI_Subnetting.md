# El modelo OSI – ¿En qué consiste y cómo se estructura la actividad de red en capas?
En redes de ordenadores, el modelo __OSI (Open Systems Interconnection)__ es una estructura de 7 layers que se utiliza para describir el proceso de comunicación entre dispositivos. 

Cada capa proporciona __servicios y funciones específicas__, que permiten a los dispositivos comunicarse a través de la red.

1. Capa __física__: Es la capa más baja del modelo OSI, que se encarga de la transmisión de datos a través del medio físico de la red, como cables de cobre o fibra óptica.

2. Capa de __enlace de datos__: Esta capa se encarga de la transferencia confiable de datos entre dispositivos en la misma red. También proporciona funciones para la detección y corrección de errores en los datos transmitidos.

3. Capa de __red__: La capa de red se ocupa del enrutamiento de paquetes de datos a través de múltiples redes. Esta capa utiliza direcciones lógicas, como direcciones IP, para identificar dispositivos y rutas de red. [!] Aqui estan las IP de Origen y Destino 

4. Capa de __transporte__: La capa de transporte se encarga de la entrega confiable de datos entre dispositivos finales, proporcionando servicios como el con trol de flujo y la corrección de errores. TCP y UDP

5. Capa de __sesión__: Esta capa se encarga de establecer y mantener las sesiones de comunicación entre dispositivos. También proporciona servicios de gestión de sesiones, como la autenticación y la autorización. 

6. Capa de __presentación__: La capa de presentación se encarga de la representación de datos, proporcionando funciones como la codificación y decodificación de datos, la compresión y el cifrado. Responsable de traducir todo y los trata

7. Capa de __aplicación__: La capa de aplicación proporciona servicios para aplicaciones de usuario finales, como correo electrónico, navegadores web y transferencia de archivos. HTTP, HTTPS, etc...

---

# Subnetting
Técnica utilizada para dividir una red IP en subredes más pequeñas y manejables. Esto se __logra mediante el uso de máscaras de red__, que permiten definir qué bits de la dirección IP corresponden a la red y cuáles a los hosts.

## CIDR (Classless Inter-Domain Routing)
Ahora bien, cuando hablamos de __CIDR (acrónimo de Classless Inter-Domain Routing)__, a lo que nos referimos es a un método de asignación de direcciones IP más eficiente y flexible que el uso de clases de redes IP fijas. Con CIDR, una dirección IP se representa mediante una dirección IP base y una __máscara de red,__ que se escriben juntas separadas por una barra (/).

Por ejemplo, la dirección IP 192.168.1.1 con una máscara de red de 255.255.255.0 se escribiría como 192.168.1.1 __/24__.

-> https://www.ipaddressguide.com/cidr 

---

# Tabla de Subnets y Hosts

## Subnet: x.0.0.0

| CIDR | Total Hosts   |
|------|---------------|
| /1   | 2147483648    |
| /2   | 1073741824    |
| /3   | 536870912     |
| /4   | 268435456     |
| /5   | 134217728     |
| /6   | 67108864      |
| /7   | 33554432      |
| /8   | 16777216      |

---

## Clase A - Subnet: 255.x.0.0

| CIDR | Total Hosts |
|------|-------------|
| /9   | 8388608     |
| /10  | 4194304     |
| /11  | 2097152     |
| /12  | 1048576     |
| /13  | 524288      |
| /14  | 262144      |
| /15  | 131072      |
| /16  | 65536       |

---

## Clase B - Subnet: 255.255.x.0

| CIDR | Total Hosts |
|------|-------------|
| /17  | 32768       |
| /18  | 16384       |
| /19  | 8192        |
| /20  | 4096        |
| /21  | 2048        |
| /22  | 1024        |
| /23  | 512         |
| /24  | 256         |

---

## Clase C - Subnet: 255.255.255.x

| CIDR | Total Hosts | Subnet Mask (Sustituir X) |
|------|-------------|---------------------------|
| /25  | 128         | 128                       |
| /26  | 64          | 192                       |
| /27  | 32          | 224                       |
| /28  | 16          | 240                       |
| /29  | 8           | 248                       |
| /30  | 4           | 252                       |
| /31  | 2           | 254                       |
| /32  | 1           | 255                       |

---

# TIPS de subnetting y cálculo veloz de direccionamiento en redes

## [!] Forma Aritmetica
172.14.15.16/17

- Binario : echo "obase=2;172" | bc -> 10101100 ...

10101100.00001110.00001111.00010000
- _Primeros 17 bits_ corresponden a la parte de __RED__ (por la /17)
- y los _15 bits restantes_ corresponderian a la parte de __HOST__ (17+15 = 32 bits, CORRECT!)

---

1. Netmask -> (255.255.128.0) = 17; 
Rellenar de 1 los primeros 17 bits [/17]
11111111.11111111.10000000.00000000 => esto es la mascara de RED __(255.255.128.0)__
echo "ibase=2;11111111" | bc => 255

2. Network ID -> (172.14.0.0); 
10101100.00001110.00001111.00010000 (172.14.15.16)
11111111.11111111.10000000.00000000 (255.255.128.0)
----------------------------------- => [AND]
10101100.00001110.00000000.00000000 __(172.14.0.0)__

3. Broadcast Address -> (172.14.117.255); 
10101100.00001110.00000000.00000000 (172.14.0.0)
10101100.00001110.01111111.11111111 __(172.14.117.255)__ -> 15 bits correspondiente al HOST = _Broadcast Address_

