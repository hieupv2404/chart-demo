.PHONY: filebeat-kafka

SHELL=/bin/bash

ifndef HOSTNAME
HOSTNAME := $(shell hostname)
export HOSTNAME
endif

filebeat:
	$(info Deploy filebeat...)
	@docker-compose -f docker-compose.yml up -d --force-recreate filebeat
