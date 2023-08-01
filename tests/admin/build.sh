#!/usr/bin/env bash
cp -rf core/admin/* ./
sed -i "s~FROM base~FROM elestio4test/mailu-base~g" Dockerfile
sed -i "s~COPY --from=assets /work/static/ ./mailu/static/~COPY --from=elestio4test/mailu-assets /work/static/ ./mailu/static/~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mailu-admin:latest | docker load
