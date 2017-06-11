#!/usr/bin/make
## makefile
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: update bulid start stop clean clobber test

name := fts/elk

build: 
	docker build -t $(name) .

start: 
	docker run -P -p 9200:9200 fts/elk elasticsearch

stop: 
	docker ps -a --no-trunc | grep $(name) | awk '{print$$1}' | xargs -I{} docker stop {}

clobber:
	docker ps -a --no-trunc | grep $(name) | awk '{print$$1}' | xargs -I{} docker stop {}
	docker images -a --no-trunc | grep $(name) | awk '{print$$3}' | xargs -I{} docker rmi -f {}

clean:
	@echo 'use `make clobber` instead'

test:
	curl -i -XGET 'localhost:9200/'

## *EOF*
