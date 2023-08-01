#!/usr/bin/env bash
cp -rf core/rspamd/* ./
sed -i "s~FROM base~FROM elestio4test/mailu-base~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mailu-rspamd:latest | docker load
