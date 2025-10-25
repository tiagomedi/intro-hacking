FROM ubuntu:latest

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

