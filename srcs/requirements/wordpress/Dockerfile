FROM debian:11

RUN apt update && \
	apt install -y php-fpm php-mysql curl mariadb-client && \
	apt clean && \
	rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /bin/

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/wordpress.sh /usr/local/bin/wordpress.sh

RUN chmod +x /usr/local/bin/wordpress.sh

EXPOSE 9000

CMD ["wordpress.sh"]
