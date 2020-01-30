FROM node:8-alpine

MAINTAINER Picter <developers@picter.com>

RUN apk add -Uuv \
  ca-certificates \
  git \
  gzip \
  jq \
  make \
  g++ \
  docker \
  openssh-client \
  python \
  py-pip \
  tar \
  python-dev \
  libffi-dev \ 
  openssl-dev \
  gcc \
  libc-dev \
  make \
  && rm -rf /var/cache/apk/*

RUN pip install --upgrade pip

RUN pip install docker-compose

RUN pip install awscli
