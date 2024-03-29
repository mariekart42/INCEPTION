# Use the official Nginx image as the base image
FROM alpine:3.12

RUN apk update
RUN apk add nginx openssl

RUN openssl req -x509 -nodes -days 1 -newkey rsa:2048 \
	-subj "/C=DE/ST=Stadland/L=ur mama/O=Totally trusted organization/OU=AHHHHHHHHHH" \
	-keyout /etc/ssl/private/ft_inception.key -out /etc/ssl/certs/ft_inception.crt

COPY ./conf/default.conf /etc/nginx/conf.d/

RUN mkdir /run/nginx/

CMD ["nginx", "-g", "daemon off;"]
