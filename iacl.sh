#!/bin/bash

echo "criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd grupo_ADM
groupadd grupo_VEN
groupadd grupo_SEC

echo "Criando usuários"

useradd carlos -m -c "carlos eduardo" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_ADM
useradd maria -m -c "maria eduarda" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_ADM
useradd joao -m -c "joao silva" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_ADM

useradd debora -m -c "debora maria" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_VEN
useradd roberto -m -c "roberto camargo" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_VEN
useradd sebastiana -m -c "sebastiana ribeiro" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_VEN

useradd josefina -m -c "josefina aragao" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_SEC
useradd amanda -m -c "amanda gillbert" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_SEC
useradd rogerio -m -c "rogerio lima" -s /bin/bash -p $(openssl passwd -5 Senha123) -G grupo_SEC

echo "Permissões dos diretórios"

chown root:grupo_ADM /adm
chown root:grupo_VEN /ven
chown root:grupo_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 
chmod 777 /publico

echo "fim :)"
