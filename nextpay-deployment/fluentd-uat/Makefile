.PHONY: deploy

deploy:
	$(info Deploy fluentd container)
	@docker-compose -f docker-compose.yml up --force-recreate --build -d

deploy-with-log:
	$(info Deploy fluentd container with log output...)
	@docker-compose -f docker-compose.yml up --force-recreate --build -d
	@docker logs -f --tail 20 fluentd