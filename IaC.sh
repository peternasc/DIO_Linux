#!/bin/bash

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

mkdir /publico /adm /ven /sec
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm /ven /sec
chmod 777 /publico

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
passwd maria -e
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
passwd joao -e
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
passwd roberto -e
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
passwd rogerio -e



