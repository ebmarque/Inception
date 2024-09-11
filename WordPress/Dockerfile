FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
	php7.4 \
	php7.4-mysql \
	php7.4-cli \
	php7.4-mbstring \
	php7.4-fpm \
	php-php-gettext \
	mariadb-client \
	wget \
	&& rm -fr /etc/php/7.4/fpm/pool.d/www.conf \
	&& mkdir -p /run/php

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
COPY ./script/entrypoint.sh /tmp/entrypoint.sh

RUN chmod 777 /tmp/entrypoint.sh

WORKDIR /tmp

ENTRYPOINT [ "bash", "entrypoint.sh" ]
