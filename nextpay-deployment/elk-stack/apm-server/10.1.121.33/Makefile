.PHONY: up log restart

SHELL=/bin/bash

ifndef HOSTNAME
HOSTNAME := $(shell hostname)
export HOSTNAME
endif

up:
	@docker-compose up -d

up-force:
	@docker-compose up -d --force-recreate

log:
	@docker logs -f --tail 20 apm-server

restart:
	@docker-compose restart apm-server