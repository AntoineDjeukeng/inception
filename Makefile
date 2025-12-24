NAME := inception
COMPOSE := docker compose
COMPOSE_FILE := srcs/docker-compose.yml
ENV_FILE := srcs/.env

.PHONY: all up down stop restart logs ps build clean fclean re

all: up

up:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) up -d --build

down:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) down

stop:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) stop

restart:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) restart

logs:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) logs -f --tail=200

ps:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) ps

build:
	$(COMPOSE) --env-file $(ENV_FILE) -f $(COMPOSE_FILE) build --no-cache

clean: down
	docker image prune -f

fclean: down
	docker system prune -af

re: fclean up
