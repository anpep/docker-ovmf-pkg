#!/bin/sh
IMAGE_NAME=ovmf-pkg
PROJECT_NAME=OvmfX64

mkdir -p Build
docker build --tag $IMAGE_NAME .
docker run --mount type=bind,src=$(pwd)/Build,dst=/usr/local/src/edk2/Build/$PROJECT_NAME $IMAGE_NAME build

