


all:
	mkdir -p ~/mmensing/data/db/
	mkdir -p ~/mmensing/data/wp/
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up -d
