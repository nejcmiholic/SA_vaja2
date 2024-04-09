#!/bin/bash

sudo docker build . -t nejcmiholicferi/vaja3:latest

echo "${DOCKER_PASSWORD}" | sudo docker login -u "${DOCKER_USERNAME}" --password-stdin

sudo docker push nejcmiholicferi/vaja3:latest
