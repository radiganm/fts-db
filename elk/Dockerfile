## Dockerfile for ElasticSearch
## Copyright 2016 Mac Radigan
## All Rights Reserved

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing && \
      apt-get install -y              \
        apt-utils                     \
        software-properties-common    \
        wget

  ## Elastic Search
  RUN wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add -
  RUN echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
  RUN apt-get update &&              \
      apt-get install -y             \
        openjdk-8-jre                \
        elasticsearch
        
  EXPOSE 9200
  EXPOSE 9300
  EXPOSE 5601

  RUN (cd /usr/share/elasticsearch/; ln -fs /etc/elasticsearch/* .)
  RUN mkdir -p /usr/share/elasticsearch/config

  ADD ./srv_ctl /usr/bin
  RUN chmod 775 /usr/bin/srv_ctl
  ENTRYPOINT ["/usr/bin/srv_ctl"]

## *EOF*
