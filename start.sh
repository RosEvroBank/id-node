#!/bin/bash

pkill -f geth;
nohup geth --datadir "./" --mine --rpc --rpcport 8545 --rpcaddr "0.0.0.0" rpccorsdomain "*" --networkid "10101010" > out.txt &

