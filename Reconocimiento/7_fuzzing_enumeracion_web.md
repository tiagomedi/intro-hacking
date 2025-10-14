# Fuzzing y enumeración de archivos en un servidor web (1 y 2)
## 1
Wfuzz y Gobuster para aplicar Fuzzing. Esta tecnica se utiliza para __descubrir rutas y recursos ocultos en un servidor web mediante ataques de fuerza bruta__. El objetivo es encontrar recursos ocultos que podrian ser utilizados por atacantes para obtener acceso a un servidor NO AUTORIZADO.

- _Wfuzz_ : herramienta de descubrimiento de contenido y herramienta de inyeccion de datos. Se utiliza para automatizar los procesos de pruebas de vulneraciones en aplicaciones web.
    - Permite realizar pruebas ataques de fuerza bruta en parametros y directorios de una app web para identificar recursos existentes.
    - VENTAJA : es altamente personalizable y se puede ajustar a diferentes necesidades de pruebas.
    - DESVENTAJA : incluye la necesidad de comprender la sentaxis de sus comandos y que puede ser mas lenta en comparacion con otras herramientas de descubrimiento de contenido.

- _Gobuster_ : Herramienta descubrimiento de contenido que tambien se utiliza para buscar archivos y directorios ocultos de una app web. Al igual que Wfuzz, este se basa en ataques de fuerza bruta (Brute Force) para encontrar archivos y directorios ocultos.
    - VENTAJA : Es su velocidad, ya que es conocida por ser una de las herramientas de descubrimiento de contenido MAS RAPIDAS. Facil de entender, facil utilizar y sintaxis simple.
    - DESVENTAJA : Puede NO SER TAN personalizable como Wfuzz.

- [!] CUANDO LA WEB FUNCIONA LENDO ES MEJOR UTILIZAR __GOBUSTER Y FFUF__ [!]

---
## Gobuster
- gobuster dir -u https://www.miwifi.com/ -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt -t 200
    - gobuster dir -u https://www.miwifi.com/ -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt -t 50 -x html -s 200 -b ''

## Wfuzz
- wfuzz -c -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt https://www.miwifi.com/FUZZ
    - wfuzz -c --hc=404,403 -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt https://www.miwifi.com/FUZZ
        - No muestra los 404 ni 403.
        - Redirige a un codigo final y es un 200.
    -  wfuzz -c -L --hc=404,403 -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt https://www.miwifi.com/FUZZ/
    -  wfuzz -c  --sl=216 -L --hc=404,403 -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt https://www.miwifi.com/FUZZ/ -> SlowLine
    - wfuzz -c  --hl=216 -L --hc=404,403 -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt https://www.miwifi.com/FUZZ/ -> HighLine
    - wfuzz -c --hc=404,403 -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt https://www.miwifi.com/FUZZ.html -> solo representa rutas que exista con HTML. Tambien se pude jugar con otro PAYLOAD de tipo Lista como TXT:
        - wfuzz -c  --hl=216 -L --hc=404,403 -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt -z list,html-txt-php https://www.miwifi.com/FUZZ.FUZZZ -> Ahora con 3 Z ya que prueba distintas payload, adjuntara todo lo que encuentre
- wfuzz -c -t 200 -z range,1-20000 'https://www.mi.com/shop/buy/detail?product_id=FUZZ'
    - wfuzz -c --hw=6515 -t 200 -z range,1-20000 'https://www.mi.com/shop/buy/detail?product_id=FUZZ'

## Ffuf
[!] Desarrollada en GO, mejor para Sockets [!]
- ffuf -c -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt -u https://miwifi.com/FUZZ -> T son los Hilos
- ffuf -c -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt -u https://www.miwifi.com/FUZZ/ -v -> V de Vervose para que te de los Links directos.
- ffuf -c -t 200 -w /usr/share/SecLists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-medium.txt -u https://www.miwifi.com/FUZZ/ --mc=200 -> Solo filtra codigo de estado 200
---
# Burpsuite
- burpsuite &> /dev/null & diswn
    - Proxy Foxy configurar el proxy una extensión para que pasen todas las peticiones [!]