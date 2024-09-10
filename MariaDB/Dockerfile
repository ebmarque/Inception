FROM debian:bullseye-20240904-slim

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
	mariadb-server mariadb-client -y \
	&& mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld \
	&& chown -R mysql:mysql /etc/mysql/

COPY ./script/entrypoint.sh /tmp/
COPY ./conf/init.sql /tmp/
COPY ./conf/my.conf /etc/mysql

RUN chown -R mysql:mysql /tmp/ \
	&& chown -R mysql:mysql /etc/mysql

USER mysql

WORKDIR /tmp

ENTRYPOINT [ "bash" , "entrypoint.sh" ]
