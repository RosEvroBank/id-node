#!/bin/bash

pkill -f geth;
nohup geth --datadir "./" --mine --rpc --nodiscover --rpcport 8545 --rpcaddr "0.0.0.0" rpccorsdomain "*" --networkid "10101010" > out.txt &

