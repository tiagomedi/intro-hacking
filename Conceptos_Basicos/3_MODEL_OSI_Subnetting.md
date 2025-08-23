# El modelo OSI – ¿En qué consiste y cómo se estructura la actividad de red en capas?
En redes de ordenadores, el modelo __OSI (Open Systems Interconnection)__ es una estructura de 7 layers que se utiliza para describir el proceso de comunicación entre dispositivos. 

Cada capa proporciona __servicios y funciones específicas__, que permiten a los dispositivos comunicarse a través de la red.

1. Capa __física__: Es la capa más baja del modelo OSI, que se encarga de la transmisión de datos a través del medio físico de la red, como cables de cobre o fibra óptica.

2. Capa de __enlace de datos__: Esta capa se encarga de la transferencia confiable de datos entre dispositivos en la misma red. También proporciona funciones para la detección y corrección de errores en los datos transmitidos.

3. Capa de __red__: La capa de red se ocupa del enrutamiento de paquetes de datos a través de múltiples redes. Esta capa utiliza direcciones lógicas, como direcciones IP, para identificar dispositivos y rutas de red. [!] Aqui estan las IP de Origen y Destino 

4. Capa de __transporte__: La capa de transporte se encarga de la entrega confiable de datos entre dispositivos finales, proporcionando servicios como el control de flujo y la corrección de errores. TCP y UDP

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