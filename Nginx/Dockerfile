FROM debian:bullseye-20240904-slim

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y nginx openssl sudo vim \
    && mkdir -p /etc/nginx/ssl \
    && mkdir -p /run/nginx \
    && chown -R www-data /var/lib/nginx \
    && rm -fr /etc/nginx/sites-available/default

COPY ./conf/default.conf /etc/nginx/sites-available/default.conf
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./script/entrypoint.sh /tmp/entrypoint.sh

WORKDIR /tmp

ENTRYPOINT [ "bash" , "entrypoint.sh"]