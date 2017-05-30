FROM node:6-alpine

MAINTAINER Picter <developers@picter.com>

COPY sass-build.sh /
RUN sh sass-build.sh

RUN apk --update --no-cache add python

RUN npm install -g npm@5
