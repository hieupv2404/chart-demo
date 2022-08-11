.PHONY: up log restart

up:
	@docker-compose -f docker-compose.yml up -d

log:
	@docker logs -f --tail 20 apm-server

restart:
	@docker-compose restart apm-server