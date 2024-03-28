


all:
	mkdir -p ~/data/MARIADB/
	mkdir -p ~/data/WORDPRESS/

	docker-compose -f ./srcs/docker-compose.yml down -v
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up -d
