#!/bin/bash
# https://developer.nvidia.com/cuda-downloads
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
arch=x86_64
driver_version_prefix_dot=12.1
driver_version_prefix_hyphen=12-1
driver_version=${driver_version_prefix_dot}.0
driver_version_postfix=530.30.02-1
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
# https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html
echo "sudo apt-get install linux-headers-$(uname -r)"
# sudo apt-get install linux-headers-$(uname -r)

echo "wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/$arch/cuda-keyring_1.1-1_all.deb"
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/$arch/cuda-keyring_1.1-1_all.deb

echo "sudo dpkg -i cuda-keyring_1.1-1_all.deb"
sudo dpkg -i cuda-keyring_1.1-1_all.deb

sudo apt-get update -y
sudo apt-get -y install cuda



# sudo apt-get -y install cuda-drivers

# sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/7fa2af80.pub
# sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/3bf863cc.pub
# sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/$arch/7fa2af80.pub

#################################

# sudo apt-key add /var/cuda-repo-$distro_driver/7fa2af80.pub

# && sudo apt -y install nvidia-gds

# export PATH=/usr/local/cuda-$driver_version_prefix_dot/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-$driver_version_prefix_dot/lib64\
#                          ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# sudo apt-get install g++ freeglut3-dev build-essential libx11-dev \
#     libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev libfreeimage-dev

# echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch /" | sudo tee /etc/apt/sources.list.d/cuda.list
# sudo apt-get -y install cuda-drivers
# sudo rm /etc/apt/sources.list.d/cuda.list
# sudo rm /etc/apt/sources.list.d/nvidia-ml.list
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=deb_local
