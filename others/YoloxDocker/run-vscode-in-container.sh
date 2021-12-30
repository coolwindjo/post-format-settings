#! /bin/bash
sudo rm -rf /tmp/vsch
export PATH=/usr/local/cuda-11.3/bin${PATH:+:${PATH}}
xhost +local:docker
xhost +local:${USER}
cp ~/.Xauthority .devcontainer/
code .
