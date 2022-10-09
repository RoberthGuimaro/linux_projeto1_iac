#!/bin/bash

#PROJETO

#Diretorios

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

#Grupos

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo root como dono dos diretórios..."

chown root /public
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Permissões

echo "Definindo permissões..."

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#Usuários

echo "Criando usuários do sistema..."

useradd carlos -m -c "Carlos Silva" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -m -c "Maria Clara" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -m -c "Joao Carlos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -m -c "Debora Santanaa" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -m -c "Sebastiana Santos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -m -c "Roberto Jorge" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -m -c "Josefina Cardoso" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -m -c "Amanda Aguiar" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -m -c "Rogerio Marcos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "Tudo pronto..."
