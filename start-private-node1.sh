#!/bin/sh
# 啟動以太坊container環境

docker run \
    -d \
    -it \
    --name "eth-node1" \
    -p 8547:8545 \
    -p 30305:30303 \
    -v "$PWD/private-node1":"/root" \
    -v "$PWD/build-private":"/home" \
    ethereum/client-go:alltools-latest
