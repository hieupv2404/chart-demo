test:
	@docker run --rm -v $(PWD)/config/nginx.conf:/var/test/nginx.conf docker.elastic.co/logstash/logstash:7.16.2 logstash --config.test_and_exit -f /var/test/nginx.conf 