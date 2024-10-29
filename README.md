# cpuminer_android

Automated script to set up and run cpuminer on Linux systems. This repository contains a script, `install.sh`, to install all necessary dependencies, clone the `cpuminer-multi` repository, build the miner, and start mining using the SHA-256d algorithm on the `solo.ckpool.org` pool.

## Description

The `install.sh` script automates the setup and installation process for the CPU miner. It:
1. Updates and upgrades system packages.
2. Installs dependencies required to build the miner.
3. Clones the `cpuminer-multi` repository from GitHub.
4. Compiles the miner.
5. Initiates the mining process with predefined parameters.

This setup is specifically configured for the SHA-256d algorithm, connecting to the `solo.ckpool.org` pool with customizable options for mining configurations.

## Prerequisites

The script assumes a Linux-based environment with `curl` installed. It also requires sudo privileges to install necessary packages.

## Installation

To install and run the miner, execute the following command:

```bash
curl -L https://github.com/tanishdt/cpuminer_android/raw/main/install.sh | bash
```

This command downloads `install.sh` from the GitHub repository and runs it automatically.

## Script Details

The `install.sh` script performs the following steps:

1. **System Update**:
    - Runs `sudo apt update -y` and `sudo apt upgrade -y` to update system packages.
  
2. **Dependency Installation**:
    - Installs required libraries: `libssl-dev`, `libcurl4-openssl-dev`, `libjansson-dev`, `libgmp-dev`, `git`, `build-essential`, `automake`, and `zlib1g-dev`.

3. **Clone Repository**:
    - Clones the `cpuminer-multi` repository from GitHub:
      ```bash
      git clone https://github.com/tanishdt/cpuminer-multi.git
      ```

4. **Build the Miner**:
    - Changes into the cloned directory and runs `./build.sh` to compile the miner.

5. **Run the Miner**:
    - Starts mining using SHA-256d with the following command:
      ```bash
      ./cpuminer --algo sha256d --url solo.ckpool.org:3333 --user bc1qmffl7e9m9hyar49wda34k6trgx08u6v48gwedq.rn9pm --pass x --threads 8
      ```
      - **Parameters**:
        - **Algorithm**: `sha256d`
        - **Mining Pool URL**: `solo.ckpool.org:3333`
        - **User**: Bitcoin wallet address followed by a worker name
        - **Threads**: Set to `8` for mining efficiency

## Configuration

To modify mining parameters:
1. Clone this repository locally.
2. Open `install.sh` and update the values in the final `./cpuminer` command.

## Disclaimer

Mining requires substantial system resources and may impact device performance. Ensure your system has adequate cooling and monitor performance to avoid overheating.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome. Please fork this repository and submit a pull request.

---

Happy mining!
