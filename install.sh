#!/bin/bash
sudo apt-get update;
sudo apt-get install software-properties-common;
sudo add-apt-repository -y ppa:ethereum/ethereum;
sudo apt-get update;
sudo apt-get install ethereum;

geth --datadir "./" account new 
geth --datadir "./" init genesis.json;
nohup geth --datadir "./" --rpcapi eth,web3,personal --rpc --nodiscover --rpcport 8545 --rpcaddr "0.0.0.0" rpccorsdomain "*" --networkid "10101010" > out.txt &
#echo "-----------------------------------";
#echo "Your address:"
#geth --exec "eth.account[0]" attach ./geth.ipc;
#echo "Your node info:"
#geth --exec "admin.nodeInfo.enode" attach ./geth.ipc;
#echo "-----------------------------------";
