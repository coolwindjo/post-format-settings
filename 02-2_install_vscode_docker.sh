#!/bin/bash
# sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
sudo apt-get install -y docker-ce=5:27.0.3-1~ubuntu.22.04~jammy docker-ce-cli=5:27.0.3-1~~ubuntu.22.04~jammy containerd.io
# sudo apt-get install -y docker-ce=5:20.10.18~3-0~ubuntu-focal docker-ce-cli=5:20.10.18~3-0~ubuntu-focal containerd.io
# sudo apt-get install -y docker-ce=5:24.0.2-1~ubuntu.18.04~bionic docker-ce-cli=5:24.0.2-1~ubuntu.18.04~bionic containerd.io
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
