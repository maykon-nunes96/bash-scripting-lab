#!/bin/bash
# Parser de logs do sistema - extrai erros e alertas

LOG="/var/log/syslog"
SAIDA="/tmp/relatorio-logs.txt"
DATA=$(date +%Y-%m-%d)

echo "=== Relatório de Logs - $DATA ===" > "$SAIDA"
echo "" >> "$SAIDA"

echo "--- Erros encontrados ---" >> "$SAIDA"
grep -i "error\|erro" "$LOG" | tail -20 >> "$SAIDA"

echo "" >> "$SAIDA"
echo "--- Alertas encontrados ---" >> "$SAIDA"
grep -i "warn\|warning" "$LOG" | tail -20 >> "$SAIDA"

echo "" >> "$SAIDA"
echo "--- Falhas de autenticação ---" >> "$SAIDA"
grep -i "failed\|failure" "$LOG" | tail -20 >> "$SAIDA"

echo "Relatório gerado em: $SAIDA"
cat "$SAIDA"
