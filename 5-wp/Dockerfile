FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install curl php php-mysqli php-mbstring php-json php-date php-xml php-curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN apt install apache2 -y
RUN apt install mysql-server -y

WORKDIR /var/www/html
RUN rm -rf *
RUN wp core download --allow-root 

COPY entrypoint.sh /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]
CMD [ "tail", "-f", "/var/log/apache2/access.log" ]