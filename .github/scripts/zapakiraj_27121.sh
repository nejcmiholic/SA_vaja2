#!/bin/bash

docker build . -t nejcmiholicferi/vaja3:latest

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

docker push nejcmiholicferi/vaja3:latest
