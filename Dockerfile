FROM debian:bookworm

# ==> Download packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update \
 && apt install --no-install-recommends -y \
 software-properties-common apt-utils lsb-release ca-certificates curl apt-transport-https \
 && curl -sSLo /tmp/debsuryorg-archive-keyring.deb https://packages.sury.org/debsuryorg-archive-keyring.deb \
 && dpkg -i /tmp/debsuryorg-archive-keyring.deb \
 && sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' \
 && apt-get -y update \
 && apt-get -y upgrade \
 && apt-get install --no-install-recommends -y \
 php8.4 \
 php8.4-common \
 php8.4-cli \
 php8.4-curl \
 php8.4-dba \
 php8.4-fpm \
 php8.4-gd \
 php8.4-gmp \
 php8.4-ldap \
 php8.4-mbstring \
 php8.4-memcached \
 php8.4-mysql \
 php8.4-opcache \
 php8.4-snmp \
 php8.4-xml \
 php8.4-zip \
 && apt-get -y remove software-properties-common apt-utils lsb-release ca-certificates curl apt-transport-https \
 && apt-get clean && apt-get autoclean && apt-get -y autoremove --purge
