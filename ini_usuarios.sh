!#/bin/bash

echo "criando grupos..."

groupadd publico
groupadd gr_admin


echo "criando diretórios..."

mkdir /publico
mkdir /admin

echo "criando usuários..."

useradd user1  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G gr_admin
useradd user2  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G publico

echo "Especificando permissões..."

chown root:gr_admin /admin

chmod 770 /admin
chmod 777 /publico
