#!/bin/bash

sudo apt install -y \
git \
curl \
wget \
vim \
htop \
tmux \
snapd

# Install python3 and pip
sudo apt update
sudo apt install python3
sudo apt install python3-pip
sudo pip3 install --upgrade pip
pip install virtualenv

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get -y install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#install vscode
sudo snap install --classic code

#install cmake
sudo snap install --classic  cmake

git --version
cmake --version
docker --version
python3 --version
pip --version

if code --version &> /dev/null; then
    echo "VSCode is installed"
else
    echo "VSCode is not installed"
fi

