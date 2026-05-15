#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

clear
echo -e "${CYAN}${BOLD}#########################################"
echo -e "#          SISTEMA BLCK0UT.SH           #"
echo -e "#       RECONNAISSANCE PROTOCOL         #"
echo -e "#########################################${NC}\n"

echo -e "${RED}${BOLD}AVISO:${NC} VAI DIGITAR OS COMANDOS PARA APRENDER CABA VÉI!"
echo -e "Assinado: Blck0ut.sh\n"

echo -e "O que você deseja fazer hoje?"
echo -e "1) Varredura de rede (Ping Sweep)"
echo -e "2) Escaneamento Furtivo (SYN Scan)"
echo -e "3) Detecção Agressiva (SO, Versão, Scripts)"
echo -e "4) Escanear todas as portas"
read -p "Escolha o protocolo (1-4): " opcao

case $opcao in
    1)
        CMD="nmap -sn 192.168.1.0/24"
        DESC="Descoberta de hosts ativos."
        ;;
    2)
        CMD="sudo nmap -sS <alvo>"
        DESC="Stealth Scan (meio-aberto)."
        ;;
    3)
        CMD="nmap -A <alvo>"
        DESC="Modo Agressivo completo."
        ;;
    4)
        CMD="nmap -p- <alvo>"
        DESC="Varredura de todas as 65535 portas."
        ;;
    *)
        exit 1
        ;;
esac

echo -e "\n${GREEN}[INFO]${NC} $DESC"
echo -e "${GREEN}[COMANDO]${NC} Digite exatamente: ${BOLD}$CMD${NC}"
echo -e "------------------------------------------------------------"

echo -e "${RED}PARA EXECUTAR, DIGITE O COMANDO MANUALMENTE:${NC}"
read -p ">> " user_cmd

if [ "$user_cmd" == "$CMD" ]; then
    echo -e "\n${GREEN}Executando...${NC}\n"
    eval $user_cmd
else
    echo -e "\n${RED}ERRO! Digite o comando para aprender.${NC}"
fi
