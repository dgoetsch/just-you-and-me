#!/bin/bash

[[ -z "$1" ]] && echo "must pass in 1 arg, tf_cmd" && exit 1

docker build -t just-you-and-me-deployment deploy/
docker run \
    -v `pwd`/deploy/.creds:/mnt/.creds \
    -v `pwd`/deploy/config:/mnt/config \
    -v `pwd`/deploy/terraform:/mnt/terraform \
    -e TF_CMD=$1 \
    just-you-and-me-deployment:latest