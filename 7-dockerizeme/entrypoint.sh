#!/bin/sh

echo "***********STARTING***********"
service apache2 start

cd /apiPHP
php -S 0.0.0.0:8000 >> /var/log/apache2/access.log 2>&1 &

dotnet /apiNet/bin/Release/netcoreapp2.2/publish/apiNet.dll >> /var/log/apache2/access.log 2>&1 &

echo "***********READY**************"

exec "$@"