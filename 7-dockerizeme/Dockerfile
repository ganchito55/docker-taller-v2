FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

#add repository and install .net core sdk
RUN apt update \
    && apt install -y apt-transport-https wget nano software-properties-common \
    && wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && add-apt-repository universe \
    && apt update \
    && apt install -y dotnet-sdk-2.2 