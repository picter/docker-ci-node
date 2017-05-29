FROM node:6-alpine

MAINTAINER Picter <developers@picter.com>

RUN apk update
RUN apk add --no-cache python make gcc
