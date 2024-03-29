#!/bin/bash 
sudo apt update -y 
echo "DBPASS = ${dbpass}" > /tmp/dbpass
echo "MY_PASSWORD=${MY_PASSWORD}" >> /tmp/env_file
echo "JWT_SECRET=${JWT_SECRET}" >> /tmp/env_file
echo "DATASOURCE_USER=${DATASOURCE_USER}" >> /tmp/env_file
echo "DATASOURCE_PASSWORD=${dbpass}" >> /tmp/env_file
echo "DATASOURCE_URL=${DATASOURCE_URL}" >> /tmp/env_file
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" 
sudo apt update -y 
apt-cache policy docker-ce 
sudo apt install docker-ce -y 
sudo groupadd docker
sudo usermod -aG docker borys
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

