#!/bin/bash

echo "Iniciando o script de infraestrutura do servidor "

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "permissão do super para os diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "autorizações dos grupos..."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "criando usuarios..."

useradd carlos -c "carlos" -m -p $(openssl passwd 123) -G GRP_ADM
passwd carlos -e

useradd maria -c "maria" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd maria -e

useradd joao -c "joao" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd joao -e

useradd debora -c "debora" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "roberto" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "josefina" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "amanda" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "rogerio" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd rogerio -e

echo "Finalizado!!!"
