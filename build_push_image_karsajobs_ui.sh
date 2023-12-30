#! /bin/bash

#membuat docker image menggunakan Dockerfile yang ada di folder ini dengan nama karsajobs dengan tag latest
docker build -t ghcr.io/yfakhri/karsajobs-ui:latest .

#login ke github package container registry
echo $GITHUB_TOKEN | docker login ghcr.io -u yfakhri --password-stdin

#push image ke github package container registry
docker push ghcr.io/yfakhri/karsajobs-ui:latest

