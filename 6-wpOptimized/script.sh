#/bin/bash

docker build -t wp:optimized .
docker run --rm -p 4444:80 wp:optimized