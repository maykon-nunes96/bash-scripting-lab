#!/bin/bash
# Backup com rotação de 7 dias

ORIGEM="/home/user"
DESTINO="/tmp/backups"
DATA=$(date +%Y-%m-%d)
ARQUIVO="backup-$DATA.tar.gz"

mkdir -p "$DESTINO"
tar -czf "$DESTINO/$ARQUIVO" "$ORIGEM" 2>/dev/null

# Remove backups com mais de 7 dias
find "$DESTINO" -name "backup-*.tar.gz" -mtime +7 -delete

echo "Backup concluído: $DESTINO/$ARQUIVO"
