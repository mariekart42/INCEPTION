
all:
	mkdir -p /home/mmensing/data/MARIADB
	mkdir -p /home/mmensing/data/WORDPRESS/
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down -v

rm:
	sudo rm -rf /home/mmensing/data/MARIADB/
	sudo rm -rf /home/mmensing/data/WORDPRESS/

clear: rm
	docker rmi $$(docker images -aq)

