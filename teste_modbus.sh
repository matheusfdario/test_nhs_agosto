#!/bin/bash

if [ $# -ne 1 ]; then
        echo 1>&2 Sintaxe: $0 ip_do_inversor
        exit 1
fi 

# Caso o interesse seja de monitoramento, favor realizar
# as requisições em intervalos de 20 segundos.
echo "Teste de leitura de tabelas do modbus SUNSPEC V3"
echo "Iniciando teste de leitura das tabelas do modbus..."
sleep 5
#Tabela Inverter Sunspec  Model (101-102-103)
echo "Tabela Inverter Sunspec  Model (101-102-103)"
mbtget -a 40191 -n 52 $1
sleep 2
#Tabela ST1
echo "Tabela ST1"
mbtget -a 40261 -n 14 $1
sleep 2
#Tabela ST2
echo "Tabela ST2"
mbtget -a 40275 -n 4 $1
sleep 2
#Tabela ST3
echo "Tabela ST3"
mbtget -a 40279 -n 24 $1
sleep 2
#Tabela SEP
echo "Tabela SEP"
mbtget -a 40303 -n 22 $1
sleep 2
#Tabela SIP
echo "Tabela SIP"
mbtget -a 40325 -n 10 $1
sleep 2
#Tabela SMP
echo "Tabela SMP"
mbtget -a 40335 -n 6 $1
sleep 2
#Tabela SGP
echo "Tabela SGP"
mbtget -a 40341 -n 22 $1
sleep 2
#Tabela SBP
echo "Tabela SBP"
mbtget -a 40363 -n 18 $1
sleep 2
#Tabela SAO
echo "Tabela SAO"
mbtget -a 40381 -n 4 $1
sleep 2
#Tabela SPP
echo "Tabela SPP"
mbtget -a 40385 -n 4 $1
sleep 2
echo "Fim do teste"