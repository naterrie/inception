FROM debian:11

ARG ROOTPASSWORD
ARG DATABASENAME
ARG DATABASEUSER
ARG DATABASEPASSWORD

RUN apt update && \
	apt install -y mariadb-server && \
	apt clean && \
	rm -rf /var/lib/apt/lists/*

RUN service mariadb start && \
	mysql -e "CREATE DATABASE IF NOT EXISTS $DATABASENAME;" && \
	mysql -e "CREATE USER '$DATABASEUSER'@'localhost' IDENTIFIED BY '$DATABASEPASSWORD';" && \
	mysql -e "GRANT ALL PRIVILEGES ON $DATABASENAME.* TO '$DATABASEUSER'@'localhost';" && \
	mysql -e "FLUSH PRIVILEGES;" && \
	mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOTPASSWORD';"

EXPOSE 3306

CMD ["mariadbd", "--bind-address=0.0.0.0"]
