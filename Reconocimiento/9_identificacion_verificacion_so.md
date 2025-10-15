# Identificación y Verificación externa de la versión del Sistema Operativo
__nmap -O para identificar el SO pero es muy agresivo__
---
- arp-scan -I ens33 --localnet --ignoredups
    - Los valores de [TTL](https://www.ibm.com/es-es/think/topics/time-to-live) (time to live) puede cambiar para diversos sistemas operativos. Ahi se puede [identificar el SO con el que se esta tratando](https://subinsb.com/default-device-ttl-values/).
    - https://subinsb.com/default-device-ttl-values/
---
El archivo whichSystem es un archivo Python3 basico que detecta facilmente la lectura del TTL para identificar el Sistema Operativo.