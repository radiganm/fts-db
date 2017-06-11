#!/usr/bin/make
## makefile
## Mac Radigan

.PHONY: all json csv

name := ethereum

all: json csv

json:
	./get-eth-$@ > ./data/$(name).$@

csv:
	./get-eth-$@ > ./data/$(name).$@

txt:
	./plot-summary > ./data/$(name).$@

## *EOF*
