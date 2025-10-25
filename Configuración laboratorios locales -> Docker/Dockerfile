FROM ubuntu:latest

CMD ["apache2ctl", "-D", "FOREGROUND"]
# QUE HACE CMD?: Establece el comando predeterminado en primer plano cuando se inicie el contenedor.

ENV DEBIAN_FRONTEND noninteractive
# Usa la imagen base de Ubuntu y establece el modo no interactivo para las instalaciones

RUN apt update && apt install -y net-tools \
    iputils-ping \ 
    curl \ 
    wget \ 
    vim \
    nano \ 
    git \ 
    apache2 \
    php
# Instala las herramientas necesarias y Apache con PHP

COPY  prueba.txt /var/www/html/   
# Copia un archivo de prueba al directorio raíz de Apache

EXPOSE 80
# Expone el puerto 80 para el tráfico web

ENTRYPOINT service apache2 start && /bin/bash
# Inicia el servicio de Apache y abre una terminal bash

# ALGUNAS PREGUNTAS DEL CUESTIONARIO
# 1. ¿En qué lenguaje está escrito Docker?
# R: Docker está escrito principalmente en Go (Golang).

# 2. ¿Cuál es el propósito del comando “docker build”?
# R: El comando "docker build" se utiliza para crear una imagen de Docker a partir de un Dockerfile y un contexto de construcción.

# 3. El comando docker ... muestra información detallada sobre un contenedor en Docker.
# R: El comando es "docker inspect".

# 4. docker pull se utiliza para:
# R: Descargar una imagen de Docker desde un registro (como Docker Hub) a la máquina local.

# 5. docker push se utiliza para:
# R: Subir una imagen de Docker desde la máquina local a un registro (como Docker Hub).

# 6. docker exec se utiliza para:
# R: Ejecutar un comando en un contenedor Docker en ejecución.

# 7. docker save && docker load se utilizan para:
# R: "docker save" se utiliza para guardar una imagen de Docker en un archivo tar.
# R: "docker load" se utiliza para cargar una imagen de Docker desde un archivo tar.

# 8. ¿Qué comando se utiliza para detener un contenedor en ejecución?
# R: El comando es "docker stop <nombre_del_contenedor_o_id>".