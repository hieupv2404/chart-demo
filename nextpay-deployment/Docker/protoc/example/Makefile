.PHONY: build

build:
	@docker run --rm -v "$PWD":/tmp duclm2609/protoc-alpline:latest protoc -I/tmp --go_out=plugins=grpc,paths=source_relative:./ Example.proto

test:
	@docker run -it --rm -v "$PWD":/tmp duclm2609/protoc-alpline:latest /bin/sh