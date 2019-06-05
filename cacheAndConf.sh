#!/bin/bash

#helper 
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.2/ctop-0.7.2-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

#install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#cache
sudo docker pull ubuntu:bionic
sudo docker pull mysql:5
sudo docker pull nginx:alpine
sudo docker pull wordpress:5.2.1
sudo docker pull nginx:1.15-alpine
sudo docker pull php:7.3-alpine
sudo docker pull mcr.microsoft.com/dotnet/core/sdk:2.2-alpine
sudo docker pull mcr.microsoft.com/dotnet/core/aspnet:2.2-alpine