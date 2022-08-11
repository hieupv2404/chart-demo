.PHONY: up down

up:
	@docker-compose up -d

restart:
	@docker-compose restart gitlab-runner

register:
	@docker run --network uat-docker-network --rm -t -i --volumes-from gitlab-runner gitlab/gitlab-runner:alpine-v11.11.1 register

down:
	@docker-compose down