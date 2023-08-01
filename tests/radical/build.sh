#!/usr/bin/env bash
cp -rf optional/radicale/* ./
sed -i "s~FROM base~FROM elestio4test/mailu-base~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mailu-radical:latest | docker load
