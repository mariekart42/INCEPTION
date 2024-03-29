FROM debian:buster

# Update package list and install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    php php-mysqli php-fpm curl wget && \
    rm -rf /var/lib/apt/lists/*

# Copy php-fpm configuration
COPY ./conf/config_wordpress.conf /etc/php/7.3/fpm/pool.d/www.conf

# Install WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp && \
    wp --info

# Ensure php-fpm directory exists
RUN mkdir -p /run/php/

ARG MYSQL_NAME
ARG DB_HOST
ARG MYSQL_PASSWORD
ARG MYSQL_USER
ARG DOMAIN_NAME

WORKDIR /var/www/wordpress
COPY tools/setup.sh .
RUN sh setup.sh && rm setup.sh

# Start php-fpm
CMD /usr/sbin/php-fpm7.3 -F