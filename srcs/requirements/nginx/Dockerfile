FROM debian:11

RUN apt update -y && \
	apt upgrade -y && \
	apt install -y nginx openssl && \
	apt clean && \
	rm -fr /var/lib/apt/lists/*

RUN openssl req -x509 -nodes -newkey rsa:2048 \
	-keyout /etc/ssl/private/naterrie.key \
	-out /etc/ssl/certs/naterrie.crt \
	-subj "/C=FR/ST=Auvergne-Rhône-Alpes/L=Lyon/O=42/OU=naterrie/CN=naterrie.42.fr"

COPY conf/nginx.conf /etc/nginx/conf.d/naterrie.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
