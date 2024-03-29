FROM ubuntu:22.04

WORKDIR /mb_interface

COPY blog /usr/local/bin/blog

COPY blog_module /usr/local/bin/blog_module

COPY backup.sql backup.sql

COPY startup /usr/local/bin/startup

RUN chmod +rwx /usr/local/bin/blog /usr/local/bin/blog_module backup.sql /usr/local/bin/startup && \
	touch entry && \
	apt-get update && \
	apt-get install -y mysql-server && \
	apt-get install -y vim && \
	apt-get clean

CMD ["startup"]
