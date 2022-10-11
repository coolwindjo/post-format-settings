echo "lspci | grep -i nvidia"
lspci | grep -i nvidia
echo "uname -m && cat /etc/*release"
uname -m && cat /etc/*release
echo "sudo apt-get install linux-headers-$(uname -r)"
sudo apt-get install linux-headers-$(uname -r)

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600

sudo apt-key del 7fa2af80
sudo apt-key del 3bf863cc

driver_version_prefix=11.8

#################################
## Network Repo Installation
# echo "wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-keyring_1.0-1_all.deb"
# wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-keyring_1.0-1_all.deb
# echo "sudo dpkg -i cuda-keyring_1.0-1_all.deb"
# sudo dpkg -i cuda-keyring_1.0-1_all.deb

## Local Repo Installation
driver_version=${driver_version_prefix}.0
distro_driver=wsl-ubuntu-$driver_version_prefix-local
distro_version_arch=${distro_driver}_$driver_version-1_amd64
# wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda-repo-wsl-ubuntu-11-7-local_11.7.0-1_amd64.deb
wget http://developer.download.nvidia.com/compute/cuda/$driver_version/local_installers/cuda-repo-$distro_version_arch.deb
echo "sudo dpkg -i cuda-repo-$distro_version_arch.deb"
sudo dpkg -i cuda-repo-$distro_version_arch.deb
# sudo dpkg -i cuda-repo-wsl-ubuntu-11-7-local_11.7.0-1_amd64.deb
echo "sudo cp /var/cuda-repo-$distro_driver/cuda-*-keyring.gpg /usr/share/keyrings/"
sudo cp /var/cuda-repo-$distro_driver/cuda-*-keyring.gpg /usr/share/keyrings/
# sudo cp /var/cuda-repo-wsl-ubuntu-11-7-local/cuda-*-keyring.gpg /usr/share/keyrings/
#################################

sudo apt-get update -y
sudo apt -y install cuda\
&& sudo apt -y install nvidia-gds

export PATH=/usr/local/cuda-$driver_version_prefix/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-$driver_version_prefix/lib64\
                         ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

sudo apt-get install g++ freeglut3-dev build-essential libx11-dev \
    libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev libfreeimage-dev

sudo apt-get update -y

# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=deb_local
