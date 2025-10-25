# Despliegue de máquinas vulnerables con Docker-Compose (1 y 2)

AVISO: En caso de que veáis que no estáis pudiendo instalar ‘nano‘ o alguna utilidad en el contenedor, eliminad todo el contenido del archivo ‘/etc/apt/sources.list‘ existente en el CONTENEDOR y metedle esta línea:

deb http://archive.debian.org/debian/ jessie contrib main non-free
Posteriormente, haced un ‘apt update‘ y probad a instalar nuevamente la herramienta que queráis, ya no os debería de dar problemas.

Si estáis enfrentando dificultades con el contenedor de Elasticsearch y notáis que el contenedor no se crea después de ejecutar ‘__docker-compose up -d__‘, intentad modificar un parámetro del sistema con el siguiente comando en la consola:

__sudo sysctl -w vm.max_map_count=262144__.
Después de hacerlo, intentad de nuevo ejecutar ‘__docker-compose up -d__‘, se debería solucionar el problema.

---

A continuación, os proporcionamos el enlace al proyecto de Github que estamos usando para esta clase:

Vulhub: https://github.com/vulhub/vulhub
Asimismo, por aquí os compartimos el enlace al recurso donde se nos ofrece el script en Javascript encargado de establecer la Reverse Shell:

NodeJS Reverse Shell: https://github.com/appsecco/vulnerable-apps/tree/master/node-reverse-shell

---
1. __svn checkout https://github.com/vulhub/vulhub/trunk/kibana/CVE-2018-17246__
    - https://github.com/vulhub/vulhub/tree/master/kibana/CVE-2018-17246
    - Se cambio /tree/master/ por /trunk/
    - La carpeta de esta maquina esta en [Maquinas Vulnerables/kibana-CVE-2018-17246](./Maquinas%20Vulnerables/kibana-CVE-2018-17246/)

2. A continuación, os compartimos el enlace del proyecto correspondiente a la vulnerabilidad de ImageMagick (ImageTragick) que tocamos en esta clase:
    - Proyecto de Github: https://github.com/vulhub/vulhub/tree/master/imagemagick/imagetragick
    - __pushd__ -> __popd__ hace que te devuelvas mas rapido que un __cd__
