# docker-ovmf-pkg
![license: GNU GPL v2](https://img.shields.io/badge/license-GNU_GPL_v2-brightgreen.svg)
![works: on my machine](https://img.shields.io/badge/works-on_my_machine-brightgreen.svg)
#### X64 TianoCore OVMF Image
> 🛠️ Builds x86-64 QEMU/KVM-compatible UEFI firmware included in TianoCore EDK II.

## What's this?
A simple Dockerfile and set of scripts that prepare an Ubuntu container to run
the EDK II development environment for building UEFI drivers and applications.

## Requirements
An `edk2` Docker image built from [my-nick-is-taken/docker-edk2](https://github.com/my-nick-is-taken/docker-edk2).

## Quick start
```sh
# clone my-nick-is-taken/docker-edk2
git clone https://github.com/my-nick-is-taken/docker-edk2
# build an edk2 image
cd docker-edk2 && docker build --tag edk2 . && cd -
# clone this repository
git clone https://github.com/my-nick-is-taken/docker-ovmf-pkg
# builds the OVMF x64 package
cd docker-ovmf-pkg && ./build.sh && cd -

# The OVMF image is now under the docker-ovmf-pkg/Build directory
```

