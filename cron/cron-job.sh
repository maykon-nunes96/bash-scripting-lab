#!/bin/bash
# Agendamento de tarefas com cron

# Adiciona tarefa cron para executar o monitor de disco todo dia às 8h
TAREFA="0 8 * * * /bin/bash $HOME/bash-scripting-lab/monitoramento/monitor-disco.sh >> /tmp/monitor-disco.log 2>&1"

# Verifica se a tarefa já existe antes de adicionar
(crontab -l 2>/dev/null | grep -qF "$HOME/bash-scripting-lab/monitoramento/monitor-disco.sh") \
    && echo "Tarefa já existe no cron." \
    || (crontab -l 2>/dev/null; echo "$TAREFA") | crontab -

echo "Cron configurado. Tarefas ativas:"
crontab -l
