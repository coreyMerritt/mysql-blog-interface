FROM ubuntu:22.04

WORKDIR /opt/mysql_blog_interface

COPY blog /usr/local/bin/blog

COPY blog_core /usr/local/bin/blog_core

COPY blog_sql /usr/local/bin/blog_sql

COPY blog_config.yml /usr/local/share/blog_config.yml

COPY blog_config_mysql.cnf /usr/local/share/blog_config_mysql.cnf

COPY init.sql init.sql

COPY startup /usr/local/bin/startup

RUN chmod +rxw /usr/local/bin/blog /usr/local/bin/blog_core /usr/local/bin/blog_sql init.sql /usr/local/bin/startup

# Installs basic tools.
RUN apt-get update && \
	apt-get install -y mysql-server && \
	apt-get install -y vim && \
	apt-get	clean 

# Configures MySQL.
RUN service mysql start && \
    	mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'resetme123';" && \
   	mysql -u root -p'resetme123' -e 'CREATE DATABASE IF NOT EXISTS blog_entries' && \
   	mysql -u root -p'resetme123' -D blog_entries < init.sql && \
   	rm init.sql && \
    	service mysql stop && \
	usermod -d /var/lib/mysql/ mysql

# Attach to MySQL daemon.
CMD ["mysqld", "--defaults-extra-file=/usr/local/share/blog_config_mysql.cnf"]
