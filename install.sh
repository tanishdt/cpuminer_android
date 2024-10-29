#!/bin/bash

# Update and upgrade packages
sudo apt update -y
sudo apt upgrade -y

# Install necessary dependencies
sudo apt install -y libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev git build-essential automake zlib1g-dev

# Clone the cpuminer-multi repository
git clone https://github.com/tanish_dt/cpuminer-multi.git
cd cpuminer-multi

# Build the miner
./build.sh

# Run cpuminer with specified parameters
./cpuminer --algo sha256d --url solo.ckpool.org:3333 --user bc1qmffl7e9m9hyar49wda34k6trgx08u6v48gwedq.randd --pass x --threads 8
