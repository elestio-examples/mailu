#!/usr/bin/env bash
cp -rf core/base/* ./
docker buildx build . --output type=docker,name=elestio4test/mailu-base:latest | docker load
