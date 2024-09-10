
-- =========================================================================================================================
-- This script initializes a MariaDB database with the following steps:
-- 1. Creates a new database named MYSQL_DATABASE.
-- 2. Creates a new user named 'MYSQL_USER' with access from any host ('%') and sets the password to 'MYSQL_PASSWORD'.
-- 3. Grants all privileges on the MYSQL_DATABASE to the 'MYSQL_USER' and ensures the password is set to 'MYSQL_PASSWORD'.
-- 4. Flushes the privileges to ensure that all changes take effect immediately.
-- 5. Alters the password for the 'root' user to 'MYSQL_ROOT_PASSWORD' for localhost access.
-- =========================================================================================================================


CREATE DATABASE MYSQL_DATABASE;
CREATE USER 'MYSQL_USER'@'%'IDENTIFIED BY 'MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON MYSQL_DATABASE.* TO 'MYSQL_USER'@'%'IDENTIFIED BY 'MYSQL_PASSWORD';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost'IDENTIFIED BY 'MYSQL_ROOT_PASSWORD';