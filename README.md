# picter/docker-ci-node

https://hub.docker.com/r/picter/ci-node/

Docker image for our Gitlab CI runnner.

## Features

- docker (lts, stable)
- docker-compose
- node (lts, stable)
- npm
- yarn
- git

## Deploying

- modify `Dockerfile`
- run `docker build -t picter/ci-node:new-tag -t picter/ci-node:latest`
- run `docker login` and enter your credentials
- run `docker push picter/ci-node:new-tag`
- run `docker push picter/ci-node:latest`
- tag in git and push to remote
