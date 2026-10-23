#!/bin/bash

echo "Iniciando criação de usuários"

useradd guest10 -c "Convidado 10" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd guest10 -e

useradd guest11 -c "Convidado 11" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd guest11 -e
 
useradd guest12 -c "Convidado 12" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd guest12 -e

useradd guest13 -c "Convidado 13" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd guest13 -e

useradd guest14 -c "Convidado 14" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd guest14 -e

echo "Finalizado!!"
