#!/bin/bash

# sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt autoremove -y
sudo snap install --classic code

# Docker Install
  # apt-transport-https \
sudo apt-get update -y && sudo apt-get install -q -y --no-install-recommends \
  ca-certificates \
  curl \
  gnupg \
  lsb-release \
&& sudo rm -rf /var/lib/apt/lists/*

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
