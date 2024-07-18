#!/bin/bash

# sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt autoremove -y
#sudo snap install --classic code

# Docker Install
# apt-transport-https \
#  gnupg \
#  lsb-release \
# Add Docker's official GPG key:
sudo apt-get update -y && sudo apt-get install -q -y --no-install-recommends \
  ca-certificates \
  curl \
&& sudo rm -rf /var/lib/apt/lists/*

sudo install -m 0755 -d /etc/apt/keyrings

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  #"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  #$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
apt-cache madison docker-ce
