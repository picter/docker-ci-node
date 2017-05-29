#!/bin/sh

# Build
apk --update --no-cache add git build-base
git clone https://github.com/sass/sassc
cd sassc
git clone https://github.com/sass/libsass
SASS_LIBSASS_PATH=/sassc/libsass make

# Install
mv bin/sassc /usr/bin/sass

# Cleanup
cd /
rm -rf /sassc
apk del git build-base
apk add libstdc++ # sass binary still needs this because of dynamic linking.
rm -rf /var/cache/apk/*
