
all:
	mkdir -p ~/data/MARIADB/
	mkdir -p ~/data/WORDPRESS/
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down -v

rm:
	sudo rm -rf ~/data/MARIADB/
	sudo rm -rf ~/data/WORDPRESS/

clear: rm
	docker rmi $$(docker images -aq)

