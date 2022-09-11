FROM ubuntu:22.04

# ==> Download packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update \
 && apt install --no-install-recommends -y \
 software-properties-common apt-utils \
 && add-apt-repository -y universe \
 && apt-get install --no-install-recommends -y \
 php8.1 \
 php8.1-common \
 php8.1-cli \
 php8.1-curl \
 php8.1-dba \
 php8.1-fpm \
 php8.1-gd \
 php8.1-gmp \
 php8.1-ldap \
 php8.1-mbstring \
 php8.1-memcached \
 php8.1-mysql \
 php8.1-opcache \
 php8.1-snmp \
 php8.1-xml \
 php8.1-zip \
 && apt-get -y upgrade && apt-get clean && apt-get autoclean && apt-get autoremove --purge
