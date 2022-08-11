.PHONY: deploy log

ifndef VERSION
$(error The VERSION variable is required.)
endif
 
ifndef JENKINS_BUILD_NUMBER
$(error The JENKINS_BUILD_NUMBER variable is required.)
endif

deploy:
	$(info Make: Deploy image with tag "$(VERSION)-$(JENKINS_BUILD_NUMBER)".)
	@VERSION=$(VERSION) JENKINS_BUILD_NUMBER=$(JENKINS_BUILD_NUMBER) docker stack deploy --prune --compose-file docker-compose.yml vipost-report
