.PHONY: up log down

up:
	@docker-compose up -d

log:
	@docker logs -f --tail 20 logstash

down:
	@docker-compose down