#!/usr/bin/env bash
cp -rf core/admin/assets/* ./

docker buildx build . --output type=docker,name=elestio4test/mailu-assets:latest | docker load
