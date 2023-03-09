#!/bin/bash
# https://docs.nvidia.com/cuda/wsl-user-guide/index.html
# https://developer.nvidia.com/cuda/wsl

# https://developer.nvidia.com/cuda-downloads
distribution=wsl-ubuntu
arch=x86_64
driver_version_prefix_dot=12.1
driver_version_prefix_hyphen=12-1
driver_version=${driver_version_prefix_dot}.0
driver_version_postfix=1
distro_driver=$distribution-$driver_version_prefix_hyphen-local
distro_version_arch=${distro_driver}_$driver_version-${driver_version_postfix}_amd64


echo "lspci | grep -i nvidia"
lspci | grep -i nvidia
echo "uname -m && cat /etc/*release"
uname -m && cat /etc/*release

sudo apt-key del F796ECB0
sudo apt-key del 7fa2af80
sudo apt-key del 3bf863cc

echo "sudo apt-get --purge remove cuda nvida-gds cuda-drivers"
sudo apt-get --purge remove cuda nvida-gds cuda-drivers

#################################
## Local Repo Installation
echo "Local Repo Installation"
#################################
# echo "wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/$arch/cuda-$distribution.pin"
# wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/$arch/cuda-$distro.pin

# echo "sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600"
# sudo mv cuda-$distro.pin /etc/apt/preferences.d/cuda-repository-pin-600

# echo "wget https://developer.download.nvidia.com/compute/cuda/$driver_version/local_installers/cuda-repo-$distro_version_arch.deb"
# wget https://developer.download.nvidia.com/compute/cuda/$driver_version/local_installers/cuda-repo-$distro_version_arch.deb

# echo "sudo dpkg -i cuda-repo-$distro_version_arch.deb"
# sudo dpkg -i cuda-repo-$distro_version_arch.deb

# echo "sudo cp /var/cuda-repo-$distro_driver/cuda-*-keyring.gpg /usr/share/keyrings/"
# sudo cp /var/cuda-repo-$distro_driver/cuda-*-keyring.gpg /usr/share/keyrings/

# sudo apt-get update -y
# sudo apt-get -y install cuda


#################################
## Network Repo Installation
echo "Network Repo Installation"
#################################
echo "wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/$arch/cuda-keyring_1.0-1_all.deb"
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/$arch/cuda-keyring_1.0-1_all.deb

echo "sudo dpkg -i cuda-keyring_1.0-1_all.deb"
sudo dpkg -i cuda-keyring_1.0-1_all.deb

sudo apt-get update -y
sudo apt-get -y install cuda
