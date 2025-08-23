# Protocolos comunes (UDP, TCP) y el famoso Three-Way Handshake
- __TCP__  (Transmission Control Protocol)
- __UDP__ (User Datagram Protocol)

Son dos de los protocolos de red más comunes utilizados en la transferencia de datos a través de redes de ordenadores.

---
## TCP
Es un protocolo __orientado a la conexión__ que proporciona una entrega de datos confiable.

### Three-Way Handshake
Un procedimiento utilizado para establecer una conexión entre dos dispositivos. Este procedimiento consta de tres pasos: 

1. SYN
2. SYN-ACK
3. ACK

Se sincronizan los números de secuencia y de reconocimiento de los paquetes entre los dispositivos. 
> __El Three-Way Handshake es fundamental para establecer una conexión confiable y segura a través de TCP.__

### Puertos TCP comunes:
- 21: FTP (File Transfer Protocol) – permite la transferencia de archivos entre sistemas.
- 22: SSH (Secure Shell) – un protocolo de red seguro que permite a los usuarios conectarse y administrar sistemas de forma remota.
- 23: Telnet – un protocolo utilizado para la conexión remota a dispositivos de red.
- 25: SMTP (Simple Mail Transfer Protocol) - protocolo utilizado en el envio y recepción de mensajeria  de correos electronicos.
- 80: HTTP (Hypertext Transfer Protocol) – el protocolo que se utiliza para la transferencia de datos en la World Wide Web.
- 443: HTTPS (Hypertext Transfer Protocol Secure) – la versión segura de HTTP, que utiliza encriptación SSL/TLS para proteger las comunicaciones web.

- 139/445: SMB (Server Message Block) - Es un protocolo de red cliente-servidor que permite compartir archivos, impresoras y otros recursos en una red, siendo una solución de comunicación y acceso a recursos muy popular en entornos de Microsoft Windows, aunque también compatible con sistemas operativos Linux (a través de Samba) y macOS.

- 110: POP3 (Post Office Protocol 3) -  Es un estándar de internet que descarga mensajes de correo electrónico de un servidor a un dispositivo local, eliminándolos del servidor por defecto para el acceso offline y la conservación del espacio en el servidor.

- 143: IMAP (Protocolo de Acceso a Mensajes de Internet) - es un protocolo que permite a los clientes de correo electrónico acceder y administrar mensajes de correo electrónico almacenados en un servidor remoto, sincronizando todos los dispositivos del usuario y manteniendo los mensajes en el servidor hasta que se eliminen manualmente. A diferencia del protocolo POP, IMAP ofrece una experiencia de correo electrónico basada en la nube, con carpetas y correos que se organizan y se reflejan en todos los dispositivos conectados a la cuenta. 

---
## UDP - No abunda tanto...
Es un protocolo no orientado a conexión el cual __no garantiza la entrega de datos__.

### Puertos UDP comunes:

- 53: DNS (Domain Name System) – un sistema que traduce nombres de dominio en direcciones IP.
- 67/68: DHCP (Dynamic Host Configuration Protocol) – un protocolo utilizado para asignar direcciones IP y otros parámetros de configuración a los dispositivos en una red.
- 69: TFTP (Trivial File Transfer Protocol) – un protocolo simple utilizado para transferir archivos entre dispositivos en una red.
- 123: NTP (Network Time Protocol) – un protocolo utilizado para sincronizar los relojes de los dispositivos en una red.
- 161: SNMP (Simple Network Management Protocol) – un protocolo utilizado para administrar y supervisar dispositivos en una red.