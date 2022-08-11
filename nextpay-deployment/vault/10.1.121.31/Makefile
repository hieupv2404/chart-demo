.PHONY: build up up-with-log down up-no-build up-force-recreate

build:
	@docker-compose build --pull

up: build
	@docker-compose up -d

up-no-build:
	@docker-compose up -d

up-force-recreate:
	@docker-compose up --force-recreate -d

up-with-log: up
	@docker logs -f --tail 20 vault

down:
	@docker-compose down