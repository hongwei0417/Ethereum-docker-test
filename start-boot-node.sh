#!/bin/sh
# 啟動discover node

docker run \
    -d \
    -it \
    --name "bootnode" \
    -p 8080:8080 \
    -p 30301:30301 \
    -v "$PWD/boot-node":"/root" \
    ethereum/client-go:alltools-latest
