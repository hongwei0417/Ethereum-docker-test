#!/bin/sh

# 啟動bootnode
echo "請複製enode資訊並將其加入geth創建命令"

bootnode -nodekey bootnode.key -addr "127.0.0.1:30301"