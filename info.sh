#!/bin/bash
echo "-----------------------------------";
echo "Your address:"
geth --exec "eth.accounts[0]" attach ./geth.ipc;
echo "Your node info:"
geth --exec "admin.nodeInfo.enode" attach ./geth.ipc;
echo "-----------------------------------";




