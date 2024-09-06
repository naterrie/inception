FROM debian:11

RUN apt update && \
	apt install -y php-fpm php-mysql curl &&\
	apt clean && \
	rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /bin/



CMD
