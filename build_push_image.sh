#! /bin/bash

#membuat docker image menggunakan Dockerfile yang ada di folder ini dengan nama item-app dengan tag v1
docker build -t item-app:v1 .

#melihat daftar image
docker images

#mengubah tag menjadi format github package container registry
docker tag item-app:v1 ghcr.io/yfakhri/item-app

#login ke github package container registry
echo $GITHUB_TOKEN | docker login ghcr.io -u yfakhri --password-stdin

#push image ke github package container registry
docker push ghcr.io/yfakhri/item-app