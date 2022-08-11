.PHONY: up log down up-force

up:
	@docker-compose up -d

up-force:
	@docker-compose up -d --force-recreate

log:
	@docker logs -f --tail 20 elasticsearch.uat

down:
	@docker-compose down