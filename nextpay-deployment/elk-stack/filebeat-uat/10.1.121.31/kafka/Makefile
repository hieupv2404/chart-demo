.PHONY: filebeat restart log

SHELL=/bin/bash

ifndef HOSTNAME
HOSTNAME := $(shell hostname)
export HOSTNAME
endif

filebeat:
	@docker-compose -f docker-compose.yml up -d --force-recreate

restart:
	@docker-compose restart

log:
	@docker logs -f --tail 20 filebeat-kafka