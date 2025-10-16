# Instrucciones Docker para recordar
IMAGEN < CONTENEDOR
---
Como creariamos una imagen?
- __docker build -t name_images .__
    - El punto es para encontrar el primer dockerfile a encontrar 
    - __docker images__ -> muestra las imagenes en ejecución
    - __docker rmi ID-images__ -> Eliminar la imagen
     
- __docker pull__ descargar una imagen de Docker de un registro que hay de Docker
    - __docker pull debian:latest__ : crea la imagen de debian para poder crear un contenedor.
---
Como creariamos el contenedor?
-  __docker run -dit --name myContainer name_images__ -> crea el contenedor llamado myContainer de la imagen name_images
    - d : dejar en segundo plano el contenedor de forma independiente
    - i : es de interaction, interactivo para poderme conectar y disponer de una consola virtual con el parametro t
    - t : disponer de una consola virtual.
        - “-d” o “–detach“: se utiliza para arrancar el contenedor en segundo plano, en lugar de en primer plano.
        - “-i” o “–interactive“: se utiliza para permitir la entrada interactiva al contenedor.
        - “-t” o “–tty“: se utiliza para asignar un seudoterminal al contenedor.
        - “–name“: se utiliza para asignar un nombre al contenedor.
    - __docker ps__ -> puedes ver los contenedores 
    - __docker rm ID-contenedor__ -> eliminar un contenedor

- __docker exec -it myContaiuner bash__ -> te redirecciona a una conexión en bash del contenedor dentro de tu terminal.
    - hostname -> es el CONTAINDER ID
---
Dentro del contenedor puedes
- __hostname -I__ : te muestra una nueva IP diferente a tu propia VM
- __apt update__ : actualizar parametros de tu sistema
- __apt install net-tools -y__ : esto es para poder realizar ifconfig
- __apt install iputils-ping__ : para poder realizar ping dentro de la maquina
---
Se puede hacer un Dockerfile que tenga todo instalado al momento de crear el contenedor.

Ejemplo para instalar varias cosas al momento de la creación de la IMAGE:
```bash
FROM ubuntu:latest

MAINTAINER Ignacio Santiago "tiaago"

RUN apt update && apt install net-tools -y \
        iputils-ping \
        nano \
        curl \
        git \
```