#!/bin/sh

docker run -p 5555:80 -v $PWD:/usr/share/nginx/html nginx:alpine