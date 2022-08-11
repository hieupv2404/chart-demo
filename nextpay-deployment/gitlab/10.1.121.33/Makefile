.PHONY: up restart register register-mpos down

register: PROJECT_REGISTRATION_TOKEN ?= $(shell stty -echo; read -p "Token: " token; stty echo; echo $$token)
register-mpos: PROJECT_REGISTRATION_TOKEN ?= $(shell stty -echo; read -p "Token: " token; stty echo; echo $$token)

up:
	@docker-compose up -d

restart:
	@docker-compose restart gitlab-runner

register:
	@docker run --rm --volumes-from gitlab-runner gitlab/gitlab-runner:alpine-v11.11.1 register \
				--non-interactive \
				--executor "docker" \
				--docker-image maven:3.6.3-jdk-8-slim \
				--url "https://gitlab.saobang.vn/" \
				--registration-token "$(PROJECT_REGISTRATION_TOKEN)" \
				--description "[Vimo] docker runner" \
				--tag-list "vimo" \
				--run-untagged="false" \
				--locked="false"

register-mpos:
	@docker run --rm --volumes-from gitlab-runner-mpos gitlab/gitlab-runner:alpine-v11.11.1 register \
				--non-interactive \
				--executor "docker" \
				--docker-image maven:3.6.3-jdk-8-slim \
				--url "https://gitlab.saobang.vn/" \
				--registration-token "$(PROJECT_REGISTRATION_TOKEN)" \
				--description "[mPos] docker runner" \
				--tag-list "mpos" \
				--run-untagged="false" \
				--locked="false"

down:
	@docker-compose down