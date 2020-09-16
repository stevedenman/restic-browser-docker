#!/bin/sh

docker run \
    --privileged \
    --name restic-browser \
    --rm \
    --env-file env \
    -p 8080:8080 \
    restic-browser
