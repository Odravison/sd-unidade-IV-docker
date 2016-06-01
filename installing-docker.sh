#!/bin/sh

sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

#Verificando se o arquivo existe ou não.
if [ -s /etc/apt/sources.list.d/docker.list ]; then
	echo "=================>>>> LOG: Arquivo existia, deletando arquivo por completo e adicionando  novo arquivo"
	sudo rm -rf /etc/apt/sources.list.d/docker.list
else
	echo "=================>>>> LOG: Arquivo não existia, adicionando arquivo"

fi

#E finalmente, criando o arquivo e adicionando um valor dentro dele.
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee --append /etc/apt/sources.list.d/docker.list




sudo apt-get update -y

sudo apt-get purge lxc-docker -y

sudo apt-cache policy docker-engine

sudo apt-get upgrade -y

sudo apt-get update -y

sudo apt-get install linux-image-extra-$(uname -r) -y

sudo apt-get update -y

sudo apt-get install docker-engine -y

sudo service docker start

echo "DOCKER INSTALADO COM SUCESSO, INICIANDO TESTES ..."

sudo docker run hello-world

sudo apt-get upgrade docker-engine -y

sudo usermod -aG docker ubuntu

