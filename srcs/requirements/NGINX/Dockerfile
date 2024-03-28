# Use the official Nginx image as the base image
FROM alpine:3.12

RUN apk update
RUN apk add nginx openssl

#create SSL key in container = /etc/ssl/private/ft_inception.key
#create certificate in container = /etc/ssl/certs/ft_inception.crt
RUN openssl req -x509 -nodes -days 1 -newkey rsa:2048 \
	-subj "/C=RU/ST=Tatarstan/L=Haha I live there!/O=Totally trusted organization/OU=your mom!" \
	-keyout /etc/ssl/private/ft_inception.key -out /etc/ssl/certs/ft_inception.crt


#COPY ./conf/default.conf /etc/nginx/default.conf
COPY ./conf/default.conf /etc/nginx/conf.d/

RUN mkdir /run/nginx/

# Expose port 443 for incoming HTTP traffic
#EXPOSE 443

## Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
#CMD ["/bin/sh"]