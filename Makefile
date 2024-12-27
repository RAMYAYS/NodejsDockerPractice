# Variables
DOCKER_COMPOSE = docker-compose

# Targets
build:
	$(DOCKER_COMPOSE) build

up:
	$(DOCKER_COMPOSE) up

down:
	$(DOCKER_COMPOSE) down

logs:
	$(DOCKER_COMPOSE) logs -f

clean:
	$(DOCKER_COMPOSE) down --rmi all --volumes --remove-orphans
