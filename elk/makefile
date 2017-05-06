#!/usr/bin/make
## makefile
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: update

build: 
	docker build -t fts/elk .

run: 
	docker run -P fts/elk elasticsearch

## *EOF*
