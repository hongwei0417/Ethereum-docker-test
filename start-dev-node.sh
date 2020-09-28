#!/bin/sh
# 啟動開發模式下的網路node2

docker run \
    -d \
    -it \
    --name "eth-node2" \
    -p 8546:8545 \
    -p 30304:30303 \
    -v "$PWD/dev-node":"/root" \
    ethereum/client-go \
        --datadir "/root/my-node" \
        --rpc \
        --dev \
        --networkid "1234" \
        --rpcaddr "0.0.0.0" \
        --rpcport "8545" \
        --rpcapi "web3,net,eth,admin,personal" \
        --rpccorsdomain "*" \
