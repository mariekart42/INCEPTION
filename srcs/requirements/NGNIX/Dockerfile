# Use the official Nginx image as the base image
FROM alpine:latest

RUN apk update
RUN apk add nginx openssl

#create SSL key in container = /etc/ssl/private/ft_inception.key
#create certificate in container = /etc/ssl/certs/ft_inception.crt
RUN openssl req -x509 -nodes -days 1 -newkey rsa:2048 \
	-subj "/C=RU/ST=Tatarstan/L=Haha I live there!/O=Totally trusted organization/OU=your mom!" \
	-keyout /etc/ssl/private/ft_inception.key -out /etc/ssl/certs/ft_inception.crt



## Create directories in the container to copy files
#RUN mkdir -p /etc/nginx/conf.d
#RUN mkdir -p /usr/share/nginx/html
#
## Copy your custom nginx.conf file to the container
#COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#
## Copy your HTML files to the default Nginx web root directory
#COPY ./tools/html /usr/share/nginx/html
#
## Expose port 443 for incoming HTTP traffic
#EXPOSE 443
#
## Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
#CMD ["/bin/sh"]