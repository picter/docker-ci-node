FROM node:16-alpine

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
  python3 \
  py3-pip \
  tar \
  python3-dev \
  libffi-dev \
  openssl-dev \
  gcc \
  libc-dev \
  make \
  bash \
  curl \
  && rm -rf /var/cache/apk/*

RUN pip install --upgrade pip

RUN pip install docker-compose

RUN pip install awscli
