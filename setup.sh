#!/bin/bash

# 1. Enable remote connections to MySQL on Hostinger (https://support.hostinger.com/en/articles/1583546-how-to-set-up-remote-mysql-access)

# 2. Update apt
bash ./utils/apt-update.sh

# 3. Install curl
apt install curl

# 3. Install skeema
bash ./utils/install-skeema.sh

# 4. Install docker in WSL (https://docs.docker.com/engine/install/debian/)
bash ./utils/install-docker.sh

mkdir skeema