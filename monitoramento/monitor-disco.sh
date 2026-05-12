#!/bin/bash
# Monitora uso de disco e alerta se ultrapassar 80%

LIMITE=80

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read -r USO PARTICAO; do
    VALOR="${USO//%/}"
    if [ "$VALOR" -ge "$LIMITE" ]; then
        echo "ALERTA: Partição $PARTICAO está com $USO de uso!"
    else
        echo "OK: Partição $PARTICAO está com $USO de uso."
    fi
done
