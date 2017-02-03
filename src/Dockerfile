# For easy for beginner of docker user, this image based from Ubuntu:16.04 image
# Install everything that we need from scratch like a ubuntu vps machine
# Limitations: This approach is not good for optimizing your docker images (size, performance,...)

FROM ubuntu:16.04
MAINTAINER sminer <sminer@system-mining.xyz>

# Install dependency library
RUN apt-get update && apt-get install -y curl php php7.0-mysqli php7.0-fpm php7.0-intl

# Add stable release phalcon ppa
RUN curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash

# Install phalcon library
RUN apt-get install -y php7.0-phalcon

# Create /run/php directory
RUN mkdir /run/php

# Add new config to enalble listen on ip address
ADD docker-conf/fpm.conf etc/php/7.0/fpm/pool.d/www.conf

# Export port 9000 as default
EXPOSE 9000

# Run nginx without deamon mode 
CMD ["php-fpm7.0"]


