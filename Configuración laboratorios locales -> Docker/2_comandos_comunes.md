# Comandos comunes para la gestión de contenedores

A continuación, se detallan algunos de los comandos vistos en esta clase:

- __docker rm $(docker ps -a -q) –force__: este comando se utiliza para eliminar todos los contenedores en el sistema, incluyendo los contenedores detenidos. 
    - La opción “-q” se utiliza para mostrar sólo los identificadores numéricos de los contenedores,
    - la opción “–force” se utiliza para forzar la eliminación de los contenedores que están en ejecución. 
    - Es importante tener en cuenta que la eliminación de todos los contenedores en el sistema puede ser peligrosa, ya que puede borrar accidentalmente contenedores importantes o datos importantes. Por lo tanto, se recomienda tener precaución al utilizar este comando.

- __docker rm id_contenedor__: este comando se utiliza para eliminar un contenedor específico a partir de su identificador. 
    - Es importante tener en cuenta que la eliminación de un contenedor eliminará también cualquier cambio que se haya realizado dentro del contenedor, como la instalación de paquetes o la modificación de archivos.

- __docker rmi $(docker images -q)__: este comando se utiliza para eliminar todas las imágenes de Docker en el sistema. 
    - La opción “-q” se utiliza para mostrar sólo los identificadores numéricos de las imágenes. 
    - Es importante tener en cuenta que la eliminación de todas las imágenes de Docker en el sistema puede ser peligrosa, ya que puede borrar accidentalmente imágenes importantes o datos importantes. 
    - Por lo tanto, se recomienda tener precaución al utilizar este comando.

- __docker rmi id_imagen__: este comando se utiliza para eliminar una imagen específica a partir de su identificador. 
    - Es importante tener en cuenta que la eliminación de una imagen eliminará también cualquier contenedor que se haya creado a partir de esa imagen. 
    - Si se desea eliminar una imagen que tiene contenedores en ejecución, se deben detener primero los contenedores y luego eliminar la imagen.

En la siguiente clase, veremos cómo aplicar port fowarding y cómo jugar con monturas. El port forwarding nos permitirá redirigir el tráfico de red desde un puerto específico en el host a un puerto específico en el contenedor, lo que nos permitirá acceder a los servicios que se ejecutan dentro del contenedor desde el exterior.

Las monturas, por otro lado, nos permitirán compartir un directorio o archivo entre el sistema host y el contenedor, lo que nos permitirá persistir la información entre ejecuciones de contenedores y compartir datos entre diferentes contenedores.

- Para eliminar todos los contenedores Docker, puedes usar el comando __docker container prune__ para borrar solo los detenidos, o detener y eliminar todos los contenedores con 
    - __docker stop $(docker ps -a -q)__
    - __docker rm $(docker ps -a -q)__