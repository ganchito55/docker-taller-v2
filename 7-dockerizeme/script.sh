#!/bin/bash

docker build -t myoffice .

docker run --rm \
-p 5000:5000 \
-p 8080:80   \
-p 8000:8000 \
-v $PWD/src/front:/var/www/html \
-v $PWD/src/apiPHP:/apiPHP \
-e CURRENCY=$ \
docdoc