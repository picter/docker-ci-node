FROM node:6-alpine

MAINTAINER Picter <developers@picter.com>

COPY sass-build.sh /
RUN sh sass-build.sh

RUN apk add --update --no-cache python make g++

RUN npm install -g npm@5
