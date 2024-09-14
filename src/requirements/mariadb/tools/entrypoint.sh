#!/bin/bash

# This script is the entrypoint for the MariaDB container. It performs the following actions:
# 1. Calls the `mysql_install_db` command to initialize the MariaDB data directory.
# 2. Starts the MariaDB server using the `mysqld` command with the `--init-file` option, which specifies the path to the initialization SQL file.

# Usage: ./entrypoint.sh

# Note: Make sure to set the appropriate permissions and ownership for this script before executing it.
sed -i 's|MYSQL_DATABASE|'${MYSQL_DATABASE}'|g' /etc/mysql/init.sql
sed -i 's|MYSQL_USER|'${MYSQL_USER}'|g' /etc/mysql/init.sql
sed -i 's|MYSQL_PASSWORD|'${MYSQL_PASSWORD}'|g' /etc/mysql/init.sql
sed -i 's|MYSQL_ROOT_PASSWORD|'${MYSQL_ROOT_PASSWORD}'|g' /etc/mysql/init.sql


mysql_install_db

mysqld --init-file=/etc/mysql/init.sql
