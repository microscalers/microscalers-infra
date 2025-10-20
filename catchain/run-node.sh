#!/bin/bash
SCALER=$1  # e.g., founder
NODE_ID=$2 # e.g., 001
cd ~/fabric-samples/test-network
./network.sh up -c catchain
echo "CatChain node running at cc-$SCALER-$NODE_ID.microscalers.eth:7051"
