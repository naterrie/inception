FROM debian:11

RUN apt update && \
	apt install -y mariadb-server && \
	apt clean && \
	rm -rf /var/lib/apt/lists/*

ARG ROOTPASSWORD
ARG DATABASENAME
ARG DATABASEUSER
ARG DATABASEPASSWORD

CMD ["mariadbd", "--bind-address=0.0.0.0"]
