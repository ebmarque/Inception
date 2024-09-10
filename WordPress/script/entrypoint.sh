#!/bin/bash

# Clean up existing WordPress files if any
if [ -d "$WP_PATH" ]; then
    rm -rf $WP_PATH/*
fi

# Replace PHP_PORT placeholder in the configuration file
sed -i 's|PHP_PORT|'${PHP_PORT}'|g' /etc/php/7.4/fpm/pool.d/www.conf

if [ -f "/var/www/html/wordpress/wp-config.php" ]; then
    echo "WordPress has already been configured."
else
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod 755 wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    wp core download --path=$WP_PATH --allow-root
    wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER \
                     --dbpass=$MYSQL_PASSWORD --dbhost=mariadb  \
                     --path=$WP_PATH --skip-check --allow-root
    wp core install --path=$WP_PATH --url=$SERVER_NAME --title=$WP_TITLE \
                    --admin_user=$WP_USER --admin_password=$WP_PASSWORD \
                    --admin_email=$WP_EMAIL --skip-email --allow-root
    wp user create ebmarque ebmarque@eb.marque --role=author --path=$WP_PATH \
                                               --user_pass=ebmarque --allow-root
fi

/usr/sbin/php-fpm7.4 -F