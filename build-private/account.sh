#!/bin/sh

# 清空區塊鏈資料
./clear.sh

# 產生三個帳號
geth  account new \
    --datadir "/root/my-node" \
    --password "/home/password.txt"
geth  account new \
    --datadir "/root/my-node" \
    --password "/home/password.txt"
geth  account new \
    --datadir "/root/my-node" \
    --password "/home/password.txt"

# 帳戶列表
geth account list \
    --datadir "/root/my-node"

echo "將以上帳戶位址新增進genesis.json"