#!/usr/bin/env bash
cp -rf optional/unbound/* ./
sed -i "s~FROM base~FROM elestio4test/mailu-base~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mailu-unbound:latest | docker load
