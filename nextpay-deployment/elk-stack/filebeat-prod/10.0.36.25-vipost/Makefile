.PHONY: up log

SHELL=/bin/bash

ifndef HOSTNAME
HOSTNAME := $(shell hostname)
export HOSTNAME
endif

up:
	$(info Deploy filebeat...)
	@docker-compose -f docker-compose.yml up -d --force-recreate filebeat

log:
	@docker logs -f --tail 20 filebeat