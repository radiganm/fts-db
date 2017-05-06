#!/bin/bash
## bootstrap.sh (for fts-db)
## Copyright 2016 Mac Radigan
## All Rights Reserved

  apt-get update -q
  apt-get install -y -q --allow-unauthenticated \
    docker.io \
    gcc \
    make \
    curl \
    vim exuberant-ctags \
    git \
    tmux \
    zsh \
    ruby \
    nodejs \
    npm \
    golang \
    golang-doc \
    python3 \
    netcat \
    rsync \
    build-essential \
    rlwrap htop \
    ack-grep \
    gnuplot \
    graphviz \
    software-properties-common

  npm install coinbase/gdax-node

  if hash gh-auth 2>/dev/null; then
    echo "-----> github-auth detected"
  else
    echo "-----> Installing Github key-based auth"
    gem install github-auth
  fi

  ## install Bazel
  echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
 #curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
  #add-apt-repository ppa:webupd8team/java
  apt-get update -q
  #apt-get install oracle-java8-installer -y -q
  apt-get install -y -q --allow-unauthenticated java-8-openjdk
  apt-get install -y -q --allow-unauthenticated bazel
 #cp /usr/local/bazel/bin/bazel-complete.bash /etc/bash_completion.d/

  sudo usermod -aG docker $(whoami)

## *EOF*
