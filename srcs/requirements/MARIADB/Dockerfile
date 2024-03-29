FROM debian:buster

RUN apt update && apt install -y mariadb-server vim

COPY ./tools/setup.sh .
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/site.sql .

ARG MYSQL_NAME
ARG DB_HOST
ARG MYSQL_PASSWORD
ARG MYSQL_USER
ARG DOMAIN_NAME

RUN chmod +x ./setup.sh

RUN sh setup.sh

CMD ["mysqld", "-u", "root"]