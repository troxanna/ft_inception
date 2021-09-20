.PHONY:	all up stop down start re

all:
	docker-compose -f srcs/docker-compose.yaml build
	docker-compose -f srcs/docker-compose.yaml up -d

up:
	docker-compose -f srcs/docker-compose.yaml up -d

down:
	docker-compose -f srcs/docker-compose.yaml down

ps:
	docker-compose -f srcs/docker-compose.yaml ps

clean:
	docker system prune
