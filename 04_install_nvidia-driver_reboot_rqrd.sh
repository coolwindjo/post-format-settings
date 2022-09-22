sudo apt-get install linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
# wget http://developer.download.nvidia.com/compute/cuda/11.0.2/local_installers/cuda-repo-$distribution-11-0-local_11.0.2-450.51.05-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu1804-11-0-local_11.0.2-450.51.05-1_amd64.deb
# sudo apt-key add /var/cuda-repo-ubuntu1804-11-0-local/7fa2af80.pub
echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list
sudo apt-get update -y
sudo apt-get -y install cuda-drivers

sudo rm /etc/apt/sources.list.d/cuda.list
sudo rm /etc/apt/sources.list.d/nvidia-ml.list
sudo apt-key del 7fa2af80
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update -y
