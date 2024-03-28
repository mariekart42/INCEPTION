FROM debian:buster

RUN apt update && apt install -y mariadb-server vim

ARG MYSQL_NAME
#ARG MYSQL_HOST
ARG MYSQL_PASSWORD
ARG MYSQL_USER
#
COPY ./tools/setup.sh .
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
#COPY ./tools/site.sql .

RUN chmod +x ./setup.sh

RUN sh setup.sh

CMD ["mysqld", "-u", "root"]

