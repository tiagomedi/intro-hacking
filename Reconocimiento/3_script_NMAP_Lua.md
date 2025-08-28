# Uso de scripts y categorías en nmap para aplicar reconocimiento programados en "Lua"

Una de las características más poderosas de Nmap es su capacidad para automatizar tareas utilizando __scripts personalizados__. Los scripts de Nmap permiten a los profesionales de seguridad automatizar las tareas de reconocimiento y descubrimiento en la red, además de obtener información valiosa sobre los sistemas y servicios que se están ejecutando en ellos. El parámetro _–script_ de Nmap permite al usuario __seleccionar un conjunto de scripts para ejecutar en un objetivo de escaneo específico__.

Existen diferentes categorías de scripts disponibles en Nmap, cada una diseñada para realizar una tarea específica. Algunas de las categorías más comunes incluyen:

- __default__: Esta es la categoría predeterminada en Nmap, que incluye una gran cantidad de scripts de reconocimiento básicos y útiles para la mayoría de los escaneos.

- __discovery__: Esta categoría se enfoca en descubrir información sobre la red, como la detección de hosts y dispositivos activos, y la resolución de nombres de dominio.

- __safe__: Esta categoría incluye scripts que son considerados seguros y que no realizan actividades invasivas que puedan desencadenar una alerta de seguridad en la red.

- __intrusive__: Esta categoría incluye scripts más invasivos que pueden ser detectados fácilmente por un sistema de detección de intrusos o un Firewall, pero que pueden proporcionar información valiosa sobre vulnerabilidades y debilidades en la red.

- __vuln__: Esta categoría se enfoca específicamente en la detección de vulnerabilidades y debilidades en los sistemas y servicios que se están ejecutando en la red.

En conclusión, el uso de scripts y categorías en Nmap es una forma efectiva de automatizar tareas de reconocimiento y descubrimiento en la red. El parámetro –script permite al usuario seleccionar un conjunto de scripts personalizados para ejecutar en un objetivo de escaneo específico, mientras que las diferentes categorías disponibles en Nmap se enfocan en realizar tareas específicas para obtener información valiosa sobre la red.

## locate .nse | xargs grep "categories" | grep -oP '".*?"' | sort -u

- "auth"
- "broadcast"
- "brute"
- "default"
- "discovery"
- "dos"
- "exploit"
- "external"
- "fuzzer"
- "info"
- "intrusive"
- "malware"
- "safe"
- "version"
- "vuln"

---

#locate .nse = Muestra todos los scrpit q se pueden utilizar alojados en __/usr/share/nmap/scripts/...__

#echo -e "[+] Hay un total de $(locate .nse | wc -l ) script en Nmap" ==> [+] Hay un total de 614 script en Nmap

## Algunos famosos -> Son script visibles en Lua [!]
- __ftp-anon.nse__ = Para auditar un FTP hay veces que esta habilitado el usuario _Anonimous_ y se puede conectar como invitado sin proporsionar contraseña y subir archivos. Este esta dentro de __-sC__ como script de RECONOCIMIENTO. En caso que este configurado te lo reporta en el SCANEO.

- __http-robots.txt.nse__ = Valida la ruta /robots.txt, entradas de ruta que te las reporta por consola.

---

#python3 -m http.server 80
#lsof -i:80 => para ver que servicio esta en el Puerto 80

#nmap -p80 172.16.222.138 --script http-enum => Esto realiza un __FUZZING__ = Lanza ataque fuerza bruta con un dicc. para probar cada ruta potencial una solicitud por metodo GET. Reportara rutas que devuelva 200 o que exista el directorio o archivo

Starting Nmap 7.95 ( https://nmap.org ) at 2025-08-26 16:57 -04
Nmap scan report for 172.16.222.138
Host is up (0.000076s latency).

PORT   STATE SERVICE
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 3.77 seconds

---

__xxd -ps -r__ => Revertir HEXADECIMAL para transformarlo a DECIMAL

---

# Creación scripts en Lua para nmap
Los campos más comunes que se definen en la tabla de un script de Lua en Nmap incluyen:

- description: Este campo se utiliza para proporcionar una descripción corta del script y su funcionalidad.
- categories: Este campo se utiliza para especificar las categorías a las que pertenece el script, como descubrimiento, explotación, enumeración, etc.
- author: Este campo se utiliza para identificar al autor del script.
- license: Este campo se utiliza para especificar los términos de la licencia bajo la cual se distribuye el script.
- dependencies: Este campo se utiliza para especificar cualquier dependencia de biblioteca o software que requiera el script para funcionar correctamente.
- actions: Este campo se utiliza para definir la funcionalidad específica del script, como la realización de un escaneo de puertos, la detección de vulnerabilidades, etc.

Una vez que se ha creado un script de Lua personalizado en Nmap, se puede invocar utilizando el parámetro –script y el nombre del archivo del script. Con la creación de scripts personalizados en Lua, es posible personalizar aún más las capacidades de Nmap y obtener información valiosa sobre los sistemas y servicios en la red.