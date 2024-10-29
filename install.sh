#!/bin/bash

# Update and upgrade packages
sudo apt update -y
sudo apt upgrade -y

# Install necessary dependencies
sudo apt install libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev git build-essential automake zlib1g-dev -y

# Clone the cpuminer-multi repository
git clone https://github.com/tanishdt/cpuminer-multi.git
cd cpuminer-multi

# Build the miner
./build.sh
