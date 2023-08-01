#!/usr/bin/env bash
cp -rf core/base/* ./
sed -i "s~PyYAML==6.0~PyYAML==6.0.1~g" requirements-prod.txt
docker buildx build . --output type=docker,name=elestio4test/mailu-base:latest | docker load
