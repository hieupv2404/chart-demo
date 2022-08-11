.PHONY: up-force log

SHELL=/bin/bash

ifndef HOSTNAME
HOSTNAME := $(shell hostname)
export HOSTNAME
endif

up-force:
	@docker-compose -f docker-compose.yml up -d --force-recreate

log:
	@docker logs -f --tail 20 filebeat