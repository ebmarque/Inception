-- # **************************************************************************** #
-- #                                                                              #
-- #                                                         :::      ::::::::    #
-- #    init.sql                                           :+:      :+:    :+:    #
-- #                                                     +:+ +:+         +:+      #
-- #    By: ebmarque <ebmarque@student.42porto.com     +#+  +:+       +#+         #
-- #                                                 +#+#+#+#+#+   +#+            #
-- #    Created: 2024/09/14 15:33:13 by ebmarque          #+#    #+#              #
-- #    Updated: 2024/09/14 15:33:26 by ebmarque         ###   ########.fr        #
-- #                                                                              #
-- # **************************************************************************** #

/**
 * Creates a database named 'MYSQL_DATABASE'.
 * 
 * Creates a user 'MYSQL_USER' with the password 'MYSQL_PASSWORD' and grants all privileges on all databases to the user.
 * 
 * Flushes the privileges to apply the changes.
 */

CREATE DATABASE MYSQL_DATABASE;
CREATE USER 'MYSQL_USER'@'%' IDENTIFIED BY 'MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON *.* to 'MYSQL_USER'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;