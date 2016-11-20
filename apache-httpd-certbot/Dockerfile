FROM cpollet/apache-httpd

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list && \
	apt-get update && \
	apt-get install -y python-certbot-apache -t jessie-backports

VOLUME /etc/letsencrypt