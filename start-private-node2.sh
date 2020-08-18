#!/bin/sh
# 啟動以太坊container環境

docker run \
    -d \
    -it \
    --name "eth-node2" \
    -p 8548:8545 \
    -p 30306:30303 \
    -v "$PWD/private-node2":"/root" \
    -v "$PWD/build-private":"/home" \
    ethereum/client-go:alltools-latest
