# Enumeración del servicio FTP

- 21/FTP
- sintaxis : ftp [id]
- __locate ftp-anon.nse__ : comando de nmap para ver si cuenta con ftp HABILITADO el ANONYMOUS

FTP es un protocolo ampliamente __utilizado para la transferencia de archivos en redes__. La enumeración del servicio FTP implica recopilar información relevante, como la versión del servidor FTP, la configuración de permisos de archivos, los usuarios y las contraseñas (mediante ataques de fuerza bruta o guessing), entre otros.

> A continuación, se os proporciona el enlace al primer proyecto que tocamos en esta clase:

- Docker-FTP-Server: https://github.com/garethflowers/docker-ftp-server

Una de las herramientas que usamos en esta clase para el primer proyecto que nos descargamos es ‘Hydra‘. Hydra es una herramienta de pruebas de penetración de código abierto que se utiliza para realizar ataques de fuerza bruta contra sistemas y servicios protegidos por contraseña. La herramienta es altamente personalizable y admite una amplia gama de protocolos de red, como HTTP, FTP, SSH, Telnet, SMTP, entre otros.

El siguiente de los proyectos que utilizamos para desplegar el contenedor que permite la autenticación de usuarios invitados para FTP, es el proyecto ‘docker-anon-ftp‘ de ‘metabrainz‘. A continuación, se os proporciona el enlace al proyecto:

- Docker-ANON-FTP: https://github.com/metabrainz/docker-anon-ftp

---

- __nmap -sCV -p21 127.0.0.1__ 
- __nmap --script ftp-anon -p21 127.0.0.1__ -> prueba si existe un ftp anon en la respuesta
    - ftp-anon: Anonymous FTP login allowed (FTP code 230)
        - Esto quiere decir que te puedes conectar con usuario Anonymous con Contraseña ENTER [!]
        - _Si conecta, deputamadre, sino probar otras cosas._
Al ser ANON puedes hacer
- __ftp 127.0.0.1__ y te puedes conectar al __ftp>__ [!]

Teniendo el usuario... para saber la contraseña?
- __hydra__ fuerza bruta para ssh, ftp y multiples servicios
- sintaxis : __hydra -l user -P passlist.txt ftp://192.168.0.1 -t 15__
    - -l = indicar cual es el usuario
    - -P = nose cual es la contra y le entrega un diccionario
    - -t = indicar los hilos, para trabajar tareas simultaneamente
