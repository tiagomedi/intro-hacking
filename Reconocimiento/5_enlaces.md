- Hunter: https://hunter.io/
- Intelligence X: https://intelx.io/ (cash $ no es tan buena ya que hay varias cosas encriptadas)
- Phonebook.cz: https://phonebook.cz/ (domains, email address, urls)
- Clearbit Connect: Chrome Extension

# Reconocimiento de imágenes
- Enlace a la web de PimEyes: https://pimeyes.com/en

# Enumeración de subdominios
- Phonebook (Herramienta pasiva): https://phonebook.cz/
- Intelx (Herramienta pasiva): https://intelx.io/
- CTFR (Herramienta pasiva): git clone https://github.com/UnaPibaGeek/ctfr
    - source venv/bin/activate
    - python3 ctfr.py 
    - deactivate    

- Gobuster (Herramienta activa): https://github.com/OJ/gobuster
    - Trabaja con sockets y conexiones.
    - Cualquier herramineta contruida por Go funcionara excelente.
    - Command: vhost
    - (/usr/share) git clone https://github.com/danielmiessler/SecLists.git => Un diccionario[!]
    - gobuster vhost -u https://tinder.com/ -w /usr/share/SecLists/Discovery/DNS/subdomains-top1million-5000.txt -t 20 | grep -v "403"

- Wfuzz (Herramienta activa): https://github.com/xmendez/wfuzz
    - Herramienta especializada en FUZZING
    - Que es FUZZING : técnica automatizada de seguridad para encontrar vulnerabilidades en software al inyectar grandes volúmenes de datos inválidos o malformados en un sistema.
    - fuzzea desde descubrimiento de rutas, parametros, solicitudes transmitidas por GET, POST, cualquier cosa a enumerar; Tambien se puede Extensiones, multiples campos a fuzzear. MUCHO MAS COMODA.
    - wfuzz -c -t 20 -w /usr/share/SecLists/Discovery/DNS/subdomains-top1million-5000.txt -H "Host: FUZZ.tinder.com"  https://tinder.com | grep -v "403"
    - wfuzz -c --hc=403 -t 20 -w /usr/share/SecLists/Discovery/DNS/subdomains-top1million-5000.txt -H "Host: FUZZ.tinder.com"  https://tinder.com 
    - Si quieres mostrar uno en concreto: --sc=200 ejemplo


- Sublist3r (Herramienta pasiva): https://github.com/huntergregal/Sublist3r
    - Aprobechar de OSINT información PUBLICA
    - git clone https://github.com/huntergregal/Sublist3r