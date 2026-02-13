#!/bin/sh

docker run --rm \
    --name watchtower-on-demand \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /etc/localtime:/etc/localtime:ro \
    -e WATCHTOWER_MONITOR_ONLY=true \
    -e WATCHTOWER_CLEANUP=true \
    -e WATCHTOWER_NOTIFICATIONS=slack \
    -e WATCHTOWER_HTTP_API_METRICS=true \
    -e DOCKER_API_VERSION=1.52 \
    -env-file .env \
    nickfedor/watchtower:1.13.0 \
    --run-once
