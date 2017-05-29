FROM node:6-alpine

MAINTAINER Picter <developers@picter.com>

COPY sass-build.sh /
RUN sh sass-build.sh
