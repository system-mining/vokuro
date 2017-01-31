# Based from Nginx image
FROM php:7.0-fpm
MAINTAINER sminer <sminer@system-mining.xyz>

# Install dependency library
RUN apt-get update && apt-get install -y curl

# Add stable release phalcon ppa
RUN curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash

# Install phalcon & other dependency library
RUN apt-get install -y php7.0-phalcon && docker-php-ext-install mysqli





