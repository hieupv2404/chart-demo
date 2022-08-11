.PHONY: metricbeat

SHELL=/bin/bash

ifndef HOSTNAME
HOSTNAME := $(shell hostname)
export HOSTNAME
endif

metricbeat:
	$(info Deploy metricbeat...)
	@docker-compose -f docker-compose.yml up -d --force-recreate metricbeat
