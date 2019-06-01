#!/bin/sh

sudo docker run --name miDB -e MYSQL_ROOT_PASSWORD=1234 -e MYSQL_DATABASE=orders mysql:5

