#!/usr/bin/make
## makefile
## Mac Radigan

.PHONY: all json csv

name := ethereum

all: json csv

json:
	./get-eth-$@ > ./$(name).$@

csv:
	./get-eth-$@ > ./$(name).$@

## *EOF*
