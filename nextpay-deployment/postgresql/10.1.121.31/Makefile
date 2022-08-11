.PHONY: pull postgres postgres-with-log down

pull:
	@docker-compose pull

postgres: pull
	@docker-compose up -d

postgres-with-log: postgres
	@docker logs -f --tail 20 postgres

down:
	@docker-compose down