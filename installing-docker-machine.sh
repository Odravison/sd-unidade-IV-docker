#!/bin/sh

#Antes, você tem que ter instalado o docker-engine

sudo su

echo "Entrou em modo sudo para poder executar os comandos em modo privilegiado."

echo "Estar para executar os comandos"

curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine && \
chmod +x /usr/local/bin/docker-machine

echo "Aparentemente, tudo ocorreu bem!"


