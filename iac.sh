#!/bin/bash

# Atualizando o servidor
apt-get update
apt-get upgrade -y

# Instalação do Apache
apt-get install apache2 -y

# Instalação do unzip
apt-get install unzip -y

# Baixar modelo 
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactar o arquivo
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
