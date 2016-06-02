#!/bin/bash
sudo -i

curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
echo "Instalando..."
echo "Concedendo Permissões"
chmod +x /usr/local/bin/docker-compose

echo "Docker Compose instalado com sucesso!"
