#!/bin/bash


VERSION="0.1.0"

docker build --no-cache=true \
    --build-arg VERSION=$VERSION \
    --build-arg CREATED=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
    -t kafka-kraft:$VERSION .
