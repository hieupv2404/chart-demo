.PHONY: up recreate attach-pg-master destroy log-master restart-master reload-config-master up-master build-master up-master-force up-pgadmin stop-pgadmin

up:
	@docker-compose up -d

build-master:
	@docker-compose build postgres-master

up-master:
	@docker-compose up -d postgres-master

up-master-force:
	@docker-compose up -d --force-recreate postgres-master

restart-master:
	@docker exec -it postgres-master pg_ctl restart -mf

reload-config-master:
	@docker exec -it postgres-master pg_ctl reload	

attach-pg-master:
	@docker exec -it postgres-master bash

destroy:
	@docker-compose down -v

log-master:
	@docker logs -f --tail 20 postgres-master

up-pgadmin:
	@docker-compose up -d pgadmin

stop-pgadmin:
	@docker-compose stop pgadmin

etcd:
	@docker run -d -p 2379:2379 --mount type=volume,src=etcd,dst=/data \
				--name etcd elcolio/etcd:latest -name postgres-cluster

postgres-with-patroni:
	@docker run -d -p 5532:5432 --name postgres-patroni ongres/patroni:latest