#!/bin/bash
sudo apt update

sudo apt install git 

git clone https://github.com/PEER-Inc/peer-node-installer.git

cd peer-node-installer

sudo chmod +x substrate 


echo "Enter Your Node Name: "
read x


sudo ./peer   --base-path /data/"${x}"   --chain ./customSpecRaw.json   --port 30333   --ws-external   --rpc-external --rpc-cors all --no-telemetry  --validator   --rpc-methods Unsafe   --name "${x}"   --bootnodes /ip4/3.109.243.150/tcp/30333/p2p/12D3KooWQn9w8AdBSBkUkAkSjK4TDcZT8LB2pfT8FUr1CAqsfBtE




