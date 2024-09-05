FROM debian:11

RUN apt update && \
	apt install -y nginx openssl && \
	apt clean && \
	rm -rf /var/lib/apt/lists/*

RUN openssl req -x509 -nodes -newkey rsa:2048 \
	-keyout /etc/ssl/private/naterrie.42.fr.key \
	-out /etc/ssl/certs/naterrie.42.fr.crt \
	-subj "/C=FR/ST=AuvergneRhoneAlpes/L=Lyon/O=42/OU=naterrie/CN=naterrie.42.fr"

COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
