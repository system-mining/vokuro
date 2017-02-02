# For easy for beginner of docker user, this image based from Ubuntu:16.04 image
# Install everything that we need from scrash like a ubuntu vps machine
# Limitations: This approach is not good for optimizing your docker images (size, performance,...)

FROM ubuntu:16.04
MAINTAINER sminer <sminer@system-mining.xyz>

# Install dependency library
RUN apt-get update && apt-get install -y curl nginx php php7.0-mysqli php7.0-fpm php7.0-intl

# Add stable release phalcon ppa
RUN curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash

# Install phalcon library
RUN apt-get install -y php7.0-phalcon

# Enable phalcon if fpm
RUN ln -s /etc/php/7.0/mods-available/phalcon.ini 20-phalcon.ini

# Override default site enabled config of Nginx
ADD docker-conf/site.conf /etc/nginx/sites-enabled/default

# Forward request and error logs to docker log collector for easy debug
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

# Export port 80 & 433 as default
EXPOSE 80 443

# Run nginx without deamon mode 
CMD ["nginx", "-g", "daemon off;"]


