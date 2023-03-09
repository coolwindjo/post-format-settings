#################################
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installation-guide
## Container Device Interface (CDI) Support
# echo "Container Device Interface (CDI) Support"
#################################
# echo "sudo apt-get update -y && sudo apt-get install -y nvidia-container-toolkit-base"
# sudo apt-get update -y \
#     && sudo apt-get install -y nvidia-container-toolkit-base

# echo "nvidia-ctk --version"
# nvidia-ctk --version

# echo "sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml"
# sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml

# echo "grep "  name:" /etc/cdi/nvidia.yaml"
# grep "  name:" /etc/cdi/nvidia.yaml

# echo "podman run --rm --device nvidia.com/gpu=all ubuntu nvidia-smi -L"
# podman run --rm --device nvidia.com/gpu=all ubuntu nvidia-smi -L

#################################
## Setting up NVIDIA Container Toolkit
echo "Setting up NVIDIA Container Toolkit"
#################################
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
      && curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
      && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | \
            sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
            sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

echo "sudo apt-get update -y && sudo apt-get install -y nvidia-container-toolkit"
sudo apt-get update -y \
    && sudo apt-get install -y nvidia-container-toolkit

echo "sudo nvidia-ctk runtime configure --runtime=docker"
sudo nvidia-ctk runtime configure --runtime=docker

echo "sudo systemctl restart docker"
sudo systemctl restart docker

echo "sudo docker run --rm --runtime=nvidia --gpus all nvidia/cuda:11.6.2-base-ubuntu20.04 nvidia-smi"
sudo docker run --rm --runtime=nvidia --gpus all nvidia/cuda:11.6.2-base-ubuntu20.04 nvidia-smi


#################################
# https://docs.nvidia.com/datacenter/cloud-native/driver-containers/overview.html
##  NVIDIA driver through the use of containers
# echo " NVIDIA driver through the use of containers"
#################################
# sudo sed -i 's/^#root/root/' /etc/nvidia-container-runtime/config.toml

# sudo tee /etc/modules-load.d/ipmi.conf <<< "ipmi_msghandler" \
#   && sudo tee /etc/modprobe.d/blacklist-nouveau.conf <<< "blacklist nouveau" \
#   && sudo tee -a /etc/modprobe.d/blacklist-nouveau.conf <<< "options nouveau modeset=0"

# sudo update-initramfs -u
# sudo apt-get dist-upgrade

# # sudo reboot

# sudo docker run --name nvidia-driver -d --privileged --pid=host \
#   -v /run/nvidia:/run/nvidia:shared \
#   -v /var/log:/var/log \
#   --restart=unless-stopped \
#   nvidia/driver:450.80.02-ubuntu18.04

# sudo docker run --gpus all nvidia/cuda:11.0-base nvidia-smi

# sudo docker run --rm --gpus all nvidia/cuda:11.6.2-base-ubuntu20.04 nvidia-smi
