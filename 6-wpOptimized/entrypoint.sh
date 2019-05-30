#!/bin/sh

service mysql start
service apache2 start
mysql < /init.sql
wp config create --dbname=testing --dbuser=wp --dbpass=1234 --locale=es_ES --allow-root
wp core install --url=localhost:4444 --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com --allow-root
exec "$@"