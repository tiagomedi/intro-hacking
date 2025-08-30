#!/bin/bash
# chmod +x hostDiscovery.sh

function ctrl_c(){
	echo -e "\n\n[!] Saliendo ...\n"
	exit 1
}
tput civis
# Ctrl + C
trap ctrl_c SIGINT


for i in $(seq 1 254); do
    for port in 21 22 23 25 80 139 443 445 8080; do # Puertos comunes de FTP, SSH, Telnet, SMTP, HTTP, SMB, HTTPS, FTP (pasivo) y HTTP (WebDAV)
        timeout 1 bash -c "echo '' > /dev/tcp/172.16.222.$i/$port" 2>/dev/null && echo -e "[+] Host 172.16.222.$i - Port $port (OPEN)" &
        # El & es para que se ejecute en paralelo. Ejecución de HILOS.
    done
done

wait 
tput cnorm

echo -e "\n\n[!] Scanning completed !!!\n"