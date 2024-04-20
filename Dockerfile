FROM ubuntu:22.04

WORKDIR /mb_interface

COPY blog /usr/local/bin/blog

COPY blog_core /usr/local/bin/blog_core

COPY blog_sql /usr/local/bin/blog_sql

COPY blog_config.yml /usr/local/share/blog_config.yml

COPY blog_config_mysql.cnf /usr/local/share/blog_config_mysql.cnf

COPY init.sql init.sql

COPY startup /usr/local/bin/startup

RUN chmod +rwx /usr/local/bin/blog /usr/local/bin/blog_core /usr/local/bin/blog_sql init.sql /usr/local/bin/startup

RUN apt-get update
	
RUN apt-get install -y mysql-server && \
	apt-get install -y vim
	
RUN apt-get clean

# Startup:
# 	- Starts MySQL.
#	- Sets a default password of 'resetme123'.
#	- Creates the database.
#	- Populates the database.
#	- Cleans up.
#	- Monitors /dev/null to keep the container running.	
CMD ["startup"]
