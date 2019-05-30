FROM ubuntu:bionic

LABEL author="Jorge"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y curl \
    php php-mysqli php-mbstring php-json php-date php-xml php-curl \
    apache2 \
    mysql-server 

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

RUN rm -rf * \
    && wp core download --allow-root 

COPY . /

ENTRYPOINT ["/entrypoint.sh"]

CMD [ "tail", "-f", "/var/log/apache2/access.log" ]