#!/bin/bash

sudo docker build -t wp .
sudo docker run --rm -p 4444:80 wp 
#open http://localhost:4444/