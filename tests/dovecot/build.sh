#!/usr/bin/env bash
cp -rf core/dovecot/* ./
sed -i "s~FROM base~FROM elestio4test/mailu-base~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mailu-dovecot:latest | docker load
