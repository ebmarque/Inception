#!/bin/bash

mkdir -p $WP_PATH
chown -R www-data $WP_PATH

openssl req -x509 -nodes -days 365 \
	-subj "/C=PT/ST=Porto/L=Porto/O=42/OU='${MYSQL_USER}'/CN='${SERVER_NAME}'" -newkey rsa:2048 \
	-keyout $SSL_KEY -out $SSL_CERT

sed -i 's|SERVER_NAME|'${SERVER_NAME}'|g' /etc/nginx/sites-available/default
sed -i 's|WP_PATH|'${WP_PATH}'|g' /etc/nginx/sites-available/default
sed -i 's|PHP_HOST|'${PHP_HOST}'|g' /etc/nginx/sites-available/default
sed -i 's|PHP_PORT|'${PHP_PORT}'|g' /etc/nginx/sites-available/default
sed -i 's|SSL_KEY|'${SSL_KEY}'|g' /etc/nginx/sites-available/default
sed -i 's|SSL_CERT|'${SSL_CERT}'|g' /etc/nginx/sites-available/default

sed -i 's|SERVER_NAME|'${SERVER_NAME}'|g' /etc/nginx/nginx.conf
sed -i 's|WP_PATH|'${WP_PATH}'|g' /etc/nginx/nginx.conf
sed -i 's|PHP_HOST|'${PHP_HOST}'|g' /etc/nginx/nginx.conf
sed -i 's|PHP_PORT|'${PHP_PORT}'|g' /etc/nginx/nginx.conf
sed -i 's|SSL_KEY|'${SSL_KEY}'|g' /etc/nginx/nginx.conf
sed -i 's|SSL_CERT|'${SSL_CERT}'|g' /etc/nginx/nginx.conf

nginx -g "daemon off;"
