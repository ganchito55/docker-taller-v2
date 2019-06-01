FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive
ENV CURRENCY=€

RUN apt update \
    && apt install -y apt-transport-https wget nano software-properties-common \
    && wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && add-apt-repository universe \
    && apt update \
    && apt install -y apache2 \
        dotnet-sdk-2.2 

#RUN apt install -y php7.2
RUN apt install -y php7.0

COPY src/apiNet /apiNet

RUN cd /apiNet \
    && dotnet publish -c Release

EXPOSE 5000 80 8000 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD [ "tail", "-f", "/var/log/apache2/access.log" ]