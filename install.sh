#!/bin/bash

sudo apt-get install ca-certificates -y
sudo apt-get install curl -y
sudo apt-get install gnupg -y
sudo apt-get install lsb-release -y
    
sudo mkdir -p /etc/apt/keyrings    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo docker run hello-world

sudo apt update && sudo apt upgrade -y

wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb
sudo apt install ./docker-desktop-4.12.0-amd64.deb -y