# Bash Scripting Lab

Scripts Bash para automação, monitoramento e administração de sistemas Linux.

## Conteúdo

| Script | Descrição | Tecnologias |
|--------|-----------|-------------|
| `backup/backup-rotacao-7d.sh` | Backup com retenção de 7 dias e log de execução | bash, cron, tar |
| `monitoramento/monitor-disco.sh` | Alerta quando uso de disco ultrapassa 80% | bash, df, mail |
| `monitoramento/parser-logs.sh` | Extrai e estrutura eventos de logs do sistema | bash, awk, grep |
| `cron/cron-job.sh` | Agendamento automatizado de tarefas | cron, bash |

## Requisitos

- Sistema operacional: Linux (Ubuntu 20.04+ ou Debian 11+)
- Bash 5.0+
- ShellCheck instalado para validação de scripts

```bash
sudo apt install shellcheck -y
```

## Como usar

```bash
# Clonar o repositório
git clone https://github.com/maykon-nunes96/bash-scripting-lab.git
cd bash-scripting-lab

# Dar permissão de execução
chmod +x backup/backup-rotacao-7d.sh

# Executar
./backup/backup-rotacao-7d.sh
```

## Validação com ShellCheck

Todos os scripts foram validados com ShellCheck:

```bash
shellcheck **/*.sh
```

## Estrutura
bash-scripting-lab/
├── backup/
│   └── backup-rotacao-7d.sh
├── monitoramento/
│   ├── monitor-disco.sh
│   └── parser-logs.sh
└── cron/
└── cron-job.sh

