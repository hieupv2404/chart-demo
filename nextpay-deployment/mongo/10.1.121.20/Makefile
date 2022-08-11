.PHONY: up log-mongo down destroy

up:
	@docker-compose up -d

log-mongo:
	@docker logs -f --tail 20 mongo

down:
	@docker-compose down

destroy:
	@docker-compose down -v