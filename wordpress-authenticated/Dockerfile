FROM wordpress

COPY auth.patch /usr/src/wordpress/auth.patch

RUN apt-get update && \
    apt-get install -y patch && \
    cp /usr/src/wordpress/wp-blog-header.php /usr/src/wordpress/wp-blog-header.php.orig && \
    patch /usr/src/wordpress/wp-blog-header.php /usr/src/wordpress/auth.patch && \
    chown -R www-data:www-data /usr/src/wordpress && \
    apt-get clean && \
	rm -r /var/lib/apt/lists/*

