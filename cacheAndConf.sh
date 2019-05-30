#!/bin/bash

#helper 
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.2/ctop-0.7.2-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

#cache
sudo docker pull ubuntu:bionic
sudo docker pull mysql:8
sudo docker pull nginx:alpine