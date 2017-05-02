#!/usr/bin/make
## makefile
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: all

all: 
	$(MAKE) -C ./data/submodules
	$(MAKE) -C ./elk
	vagrant up

## *EOF*
