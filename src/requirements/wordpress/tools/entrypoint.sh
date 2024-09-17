#!/bin/bash

if [ -f "/var/www/html/wordpress/wp-config.php" ]

then
  echo "Wordpress already configured."

else

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod 777 wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=${SERVER_NAME} --title=${WP_TITLE} --admin_user=${ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${ADMIN_EMAIL} --allow-root

fi

php-fpm8.2 -F