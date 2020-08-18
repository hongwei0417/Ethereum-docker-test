#!/bin/sh
# 使用創世區塊啟動私有鏈

# 啟動my-node節點
geth --datadir "/root/my-node" \
    --rpc \
    --networkid "1234" \
    --identity "my-node" \
    --rpcaddr "0.0.0.0" \
    --rpcport "8545" \
    --rpcapi "web3,net,eth,admin,personal" \
    --rpccorsdomain "*" \
    --nodiscover \
    --bootnodes "enode://e8f7106886caf562fbad77ae362436014d9500ccee2922abc8eb9b4a67ab731801c07be31a14a5a83688e8dabb86adc5ce703e77a838f9df8193ca1e33d3fde3@172.17.0.2:30301" \
    console