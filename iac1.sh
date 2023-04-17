#!/bin/bash

echo "----------  Creating folders -----------"
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec
echo "---------- Folders created -------------"
echo "--------- Creating groups --------------"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "--------- Groups created ---------------"

echo "---------- Setting folder's owner ------"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "---------- Folder's owner set ----------"

echo "---------- Setting Folders permissions -"
chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "---------- Folders permissions set -----"

echo "--------- Creating users ---------------"
useradd carlos -m -s /bin/bash -c "Carlos Santana" -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria das Graças" -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
useradd joao -m -s /bin/bash -c "João Pedro da Silva" -p $(openssl passwd -crypt Senha123)  -G GRP_ADM

useradd debora -m -s /bin/bash -c "Débora Camilo" -p $(openssl passwd -crypt Senha123)  -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana Nogueira" -p $(openssl passwd -crypt Senha123)  -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto Ferreira" -p $(openssl passwd -crypt Senha123)  -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina Santos" -p $(openssl passwd -crypt Senha123)  -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda Ferraz" -p $(openssl passwd -crypt Senha123)  -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogerio Lopes" -p $(openssl passwd -crypt Senha123)  -G GRP_SEC

echo "---------- Users created ---------------"
echo "----------     FIM       ---------------"
