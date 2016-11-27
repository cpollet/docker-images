FROM debian:jessie

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list && \
	apt-get update && \
	apt-get install -y certbot -t jessie-backports && \
	apt-get clean && \
	rm -r /var/lib/apt/lists/*

VOLUME /etc/letsencrypt
VOLUME /var/www/certbot

ENTRYPOINT ["certbot"]
