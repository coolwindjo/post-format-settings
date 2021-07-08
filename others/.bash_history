touch test.txt
ll
su
man usermod
sudo usermod -aG josh root
sudo -s
su
sudo -i
sudo service xrdp restart
sudo service --status-all | grep +
sudo netstat -antp
sudo apt-get install xorgxrdp -package
sudo apt-get install xorgxrdp
sudo service xrdp restart
sudo systemctl enable xrdp
sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
sudo adduser xrdp ssl-cert  
sudo ufw allow 3389/tcp
sudo iptables -A INPUT -p tcp --dport 3389 -j ACCEPT
sudo netfilter-persistent save
netfilter-persistent
sudo apt-get installl netfilter-persitent
sudo apt-get install netfilter-persitent
sudo apt-get install netfilter-persistent
sudo netfilter-persistent save
sudo netfilter-persistent reload
sudo /etc/init.d/xrdp restart
sudo reboot
cd workspace/
ll
cd ..
git clone ssh://seunghyeon.jo@vgit.lge.com:29450/ims/integration.git
sudo apt-get install git
git clone ssh://seunghyeon.jo@vgit.lge.com:29450/ims/integration.git
ll
mv .ssh/
mv .ssh/ ssh_bak
ssh-keygen -t rsa -b 4096 -C "seunghyeon.jo@lge.com"
ll
rm -rf ssh_bak/
mv id_rsa .ssh/id_rsa
mv id_rsa.pub .ssh/id_rsa.pub 
rm id_rsa_*
ll
rm known_hosts 
ll
git clone ssh://seunghyeon.jo@vgit.lge.com:29450/ims/integration.git
ll .ssh/
sudo chmod /.ssh/id_rsa": bad permissions
sudo chmod 400 ~/.ssh/id_rsa
git clone ssh://seunghyeon.jo@vgit.lge.com:29450/ims/integration.git
cd integration/
ll
git checkout develop_algo
ll
cd build/
ll
cd ..
ll
sudo tar xzvf ubuntu-system-18.04-0511.tar.gz 
ll
cd workspace/
ll
cd ..
git clone ssh://git@source.lge.com:2222/DMS/hera.git
ll
cd hera/
ll
cd het/hera/
./build.sh 
sudo apt-get install libopencv-dev
vim prepare_build.sh
ll
cd ..
cd .
cd ..
ll
cd -
mv hera/het/hera/prepare_build.sh ./
ll
sudo chmod 755 prepare_build.sh 
./prepare_build.sh 
sudo apt-get install -y libgoogld-glog-dev
sudo apt-get update
sudo apt-get install -y libgoogld-glog-dev
sudo apt-getlibgoogle-glog-dev
sudo apt-get install -y libgoogle-glog-dev
sudo apt-get install -y libev-dev
sudo apt-get install -y libturbojpeg-dev
sudo apt-get install -y libuv-dev
wget https://cmake.org/files/v3.15/cmake-3.15.7.tar.gzwget https://cmake.org/files/v3.15/cmake-3.15.7.tar.gz
tar xf cmake-3.15.7.tar.gz tar xf cmake-3.15.7.tar.gz 
ll
export PATH="`pwd`/cmake-3.15.7/bin:$PATH"export PATH="`pwd`/cmake-3.15.7/bin:$PATH"
which cmake
cd cmake-3.15.7/cd cmake-3.15.7/
./configure 
make
sudo apt-get install checkinstall
sudo checkout install
sudo checkinstall
make
sudo checkinstall
fg
cd..
cd ..
cd hera/het/hera/
./build.sh 
sudo apt-get install jsoncpp
sudo apt-get update
sudo apt-get install jsoncpp
locate json.h
sudo apt-get install libjsoncpp-dev
./build.sh 
git clone ssh://git@source.lge.com:2222/DQ1/dq1_hal.git
git clone ssh://git@source.lge.com:2222/DQ1/Tools.git
cd dq1_hal/libion/
make
sudo apt-get install make
sudo apt-get install build-essential
make
make: aarch64-linux-gnu-gcc: Command not found
sudo apt-get install gcc-aarch64-linux-gnu
make
ll
cd ..
cd vdsp/
make
ll
cd ..
cd libdq1webstreamer/
make
cd ..
ll
find . -name hal_sfc
cd ..
cd Tools/
ll
cd hal_led_ctrl/
ll
./build.sh 
cd ..
cd dq1_hal/
ll
cd sfc/
ll
make
cd ..
cd libdq1webstreamer/
ll
make
cd ..
cd hera/het/hera/
ll
./build.sh 
sudo apt-get update
sudo apt install android-tools-adb android-tools-fastboot 
ll
./build.sh 
sudo tar xzvf dq1-ubuntu-system-18.04-rootfs-0511.tgz -C workspace
mkdir workspace
sudo tar xzvf dq1-ubuntu-system-18.04-rootfs-0511.tgz -C workspace
sudo chroot workspace/
sudo apt-get install qemu-user-static
sudo chroot workspace/
ll
cd workspace/
ll
adb push ../dq1_hal/libdq1webstreamer/libdq1webstreamer.so /lib
ll
cd ..
cd dq1_hal/
cd lne/
make
cd ..
cd lne
cd target/
cd ..
chroot --version
cd ..
cd hera/
git config --list
git status
vim prepare_build.sh 
df -h
ll
sudo cp .ssh/ workspace/home/ubuntu/
sudo cp -r .ssh/ workspace/home/ubuntu/
cd workspace/
cd home/
ll
cd ubuntu/
git clone ssh://git@source.lge.com:2222/DMS/hera.git
mkdir hera
sudo git clone ssh://git@source.lge.com:2222/DMS/hera.git
sudo cp -r ../../../hera/ ./
cd ..
ll
sudo reboot
sudo chroot workspace/
rm -rf hera/
git clone ssh://git@source.lge.com:2222/DMS/hera.git
su
cd dq1/
ll
cd training-pipeline/
git status
git reset --hard HEAD
git fetch && git rebase 
cd /mnt/hdd8t/
ll
cd OMS_SoC_Task/
ll
find ./traingDB -name headtracking
cd /mnt/hdd8t/OMS_SoC_Task/traingDB/
cp -rf tfrecords/ /home/josh/dq1/training-pipeline/
ll
echo $PWD
cd -
ll
cd dq1/
cd training-pipeline/
ll
rm -rf tfrecords/
/mnt/hdd8t/OMS_SoC_Task/traingDB
ll
git status
locale
sudo dpkg-reconfigure
sudo dpkg-reconfigure locales
git status
locale
sudoedit /etc/default/locale 
sudo vim /etc/default/locale 
ll
cd ..
ll
cd lgecnn/
ll
cd ..
cd josh/
ll
cd workspace/
ll
cd 
mkdir dq1
mv workspace/ dq11
mv dq11 workspace
mv workspace/ dq1/
ll
cd dq1
ll
cd ..
mv dq1_hal/ dq1/
mv Tools/ dq1/
ll
mv hera/ dq1/
mv dq1-ubuntu-system-18.04-rootfs-0511.tgz  dq1/
mv integration/ dq1
ll
cd dq1/
ll
cd .
cd ..
mkdir ti
cd ti/
git clone https://git.ti.com/cgit/jacinto-ai/jacinto-ai-modelzoo.git
git clone https://git.ti.com/git/jacinto-ai/jacinto-ai-modelzoo.git
git clone https://git.ti.com/git/jacinto-ai/jacinto-ai-benchmark.git
cd ..
ll
cd dq1/
ll
tar -xvzzf training-pipeline.tar.gz -C training_code
mkdir training-code
mv training-code/ training_code
tar -xvzf training-pipeline.tar.gz -C training_code
ll
cd training_code/
ll
mv training-pipeline/ ../
ll
cd ..
ll
rm -rf training_code/
cd training-pipeline/
ll
docker pull coolwindjo/anaconda3:latest
docker run --rm --volum
docker run --volume="&PWD:$HOME" -p 4000:4000 --name dq1_training coolwindjo/anaconda3 /bin/bash
docker run --volume="$PWD:$HOME" -p 4000:4000 --name dq1_training coolwindjo/anaconda3 /bin/bash
docker ps -a
docker rm dq1_training 
docker run -it --volume="&PWD:$HOME" -p 4000:4000 --name dq1_training coolwindjo/anaconda3 /bin/bash
docker run -it --volume="$PWD:$HOME" -p 4000:4000 --name dq1_training coolwindjo/anaconda3 /bin/bash
docker rm dq1_training 
echo $PWD
docker run -it --volume="$PWD:/home" -p 4000:4000 --name dq1_training coolwindjo/anaconda3 /bin/bash
docker run -it --volume="$PWD:$HOME" -p 4000:4000 --name dq1_training coolwindjo/anaconda3 /bin/bash
docker rm dq1_training 
docker run -it --volume="$PWD:$HOME" -p 4000:4000 --name dq1_training tensorflow/tensorflow:devel-gpu /bin/bash
docker run -it --volume="$PWD:$HOME" -p 4000:4000 --name dq1_training tensorflow/tensorflow:latest-gpu /bin/bash
docker rm dq1_training 
docker run -it --volume="$PWD:/home" -p 4000:4000 --name dq1_training tensorflow/tensorflow:latest-gpu /bin/bash
docker rm dq1_training 
docker run -it --rm --volume="$PWD:/home" -v /mnt/hdd8t/OMS_SoC_Task/traingDB:$HOME -p 4000:4000 --name dq1_training tensorflow/tensorflow:latest-gpu /bin/bash
docker run -it --rm --volume="$PWD:/home" -v /mnt/hdd8t/OMS_SoC_Task/traingDB:$HOME -p 4000:4000 --name dq1_training tensorflow/tensorflow:1.15.5-gpu-py3-jupyter /bin/bash
ll
cd dq1/
ll
cd training-pipeline/
ll
vim start_docker.sh
ll
mv start_docker.sh ../
vim ../start_docker.sh 
sudo apt-get install linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_x64/cuda-$distribution.pin
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer/download/nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
echo "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list
sudo apt-get update
sudo apt-get -y install cuda-drivers
vim ../start_docker.sh 
lspci | grep -i nvidia
docker run --gpus all --rm nvidia/cuda nividia-smi
docker run --gpus all --rm nvidia/cuda nvidia-smi
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi
curl https://get.docker.com | sh && sudo systemctl --now enable docker
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && curl -s -L https:/nvidia-docker/gpgkey | sudo apt-key add - && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/source.list.d/nvidia-docker.list
curl -s -L https:/nvidia-docker/gpgkey | sudo apt-key add - && curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu1804/nvidia-docker.list | sudo tee /etc/apt/source.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get isnatll -y nvidia-docker2
sudo apt-get insatll -y nvidia-docker2
sudo apt-get install -y nvidia-docker2
curl -s -L https://nvidia-docker/gpgkey | sudo apt-key add - && curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu1804/nvidia-docker.list | sudo tee /etc/apt/source.list.d/nvidia-docker.list
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)    && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -    && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
sudo docker run --rm --gpus all nvidia/cuda:3.0-base nvidia-smi
docker run --gpus all --rm nvidia/cuda nvidia-smi
cd dq1/training-pipeline/
vim ../start_docker.sh 
ll ../start_docker.sh 
sudo chmod 755 ../start_docker.sh 
../start_docker.sh 
cd ..
./start_docker.sh 
cd dq1/
ll
tar -xvzf training-pipeline.tar.gz -C training-pipeline_1
mkdir training-pipeline_1
tar -xvzf training-pipeline.tar.gz -C training-pipeline_1
ll
cd  training-pipeline_1/
ll
mv training-pipeline/ training-pipeline-2
ll
mv training-pipeline-2/ ./training-pipeline-2
mv training-pipeline-2/ ../training-pipeline-2
ll
cd ..
ll
rm -f training-pipeline_1/
rm -r training-pipeline_1/
ll
vim start_docker.sh 
./start_docker.sh 
vim start_docker.sh 
./start_docker.sh 
cd dq1/training-pipeline
ll
git checkout HEAD README.md 
cd ..
ll
cp start_docker.sh prepare_modules.sh
vim prepare_modules.sh 
ll
cd training-pipeline
ll
rm tfrecords 
ll
vim prepare_modules.sh 
cp prepare_modules.sh ../prepare_modules.sh 
cd /home/
ll
cd ~/
ll
dq1/
cd dq1/
vim start_docker.sh 
./start_docker.sh 
docker attach dq1_training 
./start_docker.sh 
ll
vim start_docker.sh 
./start_docker.sh 
docker ps -a
docker rm gifted_bose intelligent_pascal 
docker ps -a
docker images
docker rmi coolwindjo/yocto:latest 
docker images
docker rmi tensorflow/tensorflow:1.15.5-gpu-py3-jupyter 
docker images
cd /mnt/hdd8t/OMS_SoC_Task/
ll
cp config_and_ymls /home/josh/dq1/
cp -r config_and_ymls /home/josh/dq1/
ll
cd ..
cd home/josh/dq1/
ll
cd config_and_ymls/
ll
cd ..
cd training-pipeline-2/
ll
cp /mnt/hdd8t/OMS_SoC_Task/config_and_ymls.tar.gz ./
ll
vim fix_pythonpath.sh 
cd ..
vim prepare_modules.sh 
./start_docker.sh 
vim start_docker.sh 
vim prepare_modules.sh 
./start_docker.sh 
ll
vim start_docker.sh 
./start_docker.sh 
ll
vim prepare_modules.sh 
./start_docker.sh 
ll
cd training-pipeline
ll
cd ..
cd training-pipeline-2/
tar -xvzf config_and_ymls.tar.gz 
ll
cd ..
./start_docker.sh 
vim start_docker.sh 
./start_docker.sh 
cd dq1/
vim start_docker.sh 
vim prepare_modules.sh 
ll
cd ~
ll
ifconfig
ifconfig -s
ifconfig -w
ll
cd ti
ll
cd ..
cd dq1
ll
cd workspace/
sudo chroot workspace
ll
cd ..
sudo chroot workspace
ll
cd dq1/
ll
cd hera/
git status
git pull
cd ..
cd dq1_hal/
git status
git pull
cd ..
git status
ll
cd integration/
ll
git pull
cd ..
ll
cd Tools/
git pull
cd ..
cd training-pipeline
ll
cd ..
docker ps -a
mkdir yocto
cd yocto/
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo apt-get install repo
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
python -v\
python -v
python3 -v
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo apt-get install python3
sudo apt-get install python3-pip
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo apt-get install python3-pexpect
sudo apt-get install python3-git
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo apt-get install python3-jinja2
sudo update-alterntives --install /usr/bin/python python /usr/bin/python3.6
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
python
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
python
sudo update-alternatives --list python
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
python
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
python
sudo update-alternatives --config python
python --version
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo update-alternatives --config python
python --version
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/.repo/repo
mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo \
chmod a+rx ~/.bin/repo
mkdir -p ~/.bin
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
cat ~/.ssh/id_rsa.pub 
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDUSftWpkil6L6G/MB+6MsE07LPUb2j2QJS21n5erBAAFThCZCYYW30vQcJukm5aZ7FBVVcasBcKZq2HicePRHqkYT0casUf48J178RZVAHw/P3vinb5ae8uNTFQflVCIJuvv0v2qLL6Kt6xmszI8K52PaAtV9hpT3rlkHo0/SRJSuZOEm//YJIsQDOCNnG2vIjnZPY1teYhq94D5XMHgNkDQOHWAVG/MP1iGIM4/dRPbTiIEQosldon/nYGV5uh+CJL9dt9sRvdFpP3GYQm2MMNfuX3NYIot5R4K2txkjMmZf1Ukh+ezP3Me5qHvZipHLYZawD8XdlgGgICtmkIWJXj5ADe+6k+imFQMFoEgx96mur/yOeBk9G7LA8nN6N7PO2KIZmDOJsoqXwDIQtvyOiFbNoy4kKfZQ3VkwywMKWZeCiUiGJHb28J1CMYjLCOynObUOPl8eNvADgOGig/35eKmlU2W7pGRbHcw1w46ZC6VSSvv5P+TfcBgG4PiyKUNlocJJy1Ux87jqPm/ik53SV86Gyi9eiq58SuB7bnX71jK7clfOQtiy7qRqi05Fsm3OmGoAzxf0rAC6/nuT91OAEyCBguxNxiYFM/VfDpASyRdsF8egxZd0hfiqJFfWKhFOZaXtLtYHsVpb0uxV2RUhmOGPTQyUW10kyBPFGx0+ieQ== seunghyeon.jo@lge.com
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo update-alternatives --list python
sudo update-alternatives --config python
which repo
sudo which repo
sudo repo=/usr/bin/repo
sudo alias repo='/usr/bin/repo'
sudo alias repo="/usr/bin/repo"
sudo which repo
export PATH="~/bin:$PATH"
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo mv /usr/bin/repo /usr/bin/repo_bak
sudo cp ~/.bin/repo /usr/bin/repo
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo apt-get update
vim prepare_yocto.sh
ll
sudo chmod 755 prepare_yocto.sh 
./prepare_yocto.sh 
vim prepare_yocto.sh
./prepare_yocto.sh 
sudo apt-get install nfs-common
sudo mkdir /mnt/sic
sudo mount -t nfs 10.177.60.110:/mnt/sic /mnt/sic
sudo vim /etc/fstab 
cp prepare_yocto.sh prepare_repo.sh
vim prepare_repo.sh 
./prepare_repo.sh 
sudo which repo
vim /usr/bin/repo
sudo update-alternatives --config python
sudo vim /usr/bin/repo
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
cd ..
ll
git clone ssh://git@source.lge.com:2222/DQ1/dq1_kernel.git
python --version
ll
cd dq1_kernel/
ll
vim dq1.sh 
./dq1.sh 
ll
cd arch/
cd arm64/boot/
ll
vim install.sh 
vim Makefile 
cd ../../../
find . -name *LXBOOT.bin
find . -name *system.img
ll
cd ..
ll
cd yocto/
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
cd ..
cd dq1_kernel/
cd kernel/
ll
cd ..
ll
cd Ku
cd firmware/
ll
find . *in.o
find . -name *
cd ..
find . -name *signedbootimage.bin
sudo apt-get upgread
sudo apt-get upgrade
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo apt-get install phablet-tools
sudo add-apt-repository ppa:phablet-team/tools
sudo apt-get update
sudo vim /etc/apt/sources.list
$ sudo add-apt-repository ppa:phablet-team/tools
sudo add-apt-repository ppa:phablet-team/tools
cd ..
cd yocto/
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
sudo repo init -u http://source.lge.com/gitlab/DQ1/manifest.git
git config -ol
git config -l
git config --global user.email "seunghyeon.jo@lge.com"
git config --global user.name "JoSH"
sudo repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
o init -u http://source.lge.com/gitlab/DQ1/manifest.git
ll
repo init
sudo repo sync
sudo which repo
sudo cp /usr/bin/repo ~/.bin/repo 
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
which repo
repo init -u http://source.lge.com/gitlab/DQ1/manifest.git
cd ~/.repo
ll
cd ..
mv .repo repo_bak
ll
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
ll ~/.repoconfig/
mv  ~/.repoconfig repoconfig_bak
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
ll
rm -rf .repoconfig/ .repo/
ll
cd dq1/yocto/
repo init -u ssh://git@source.lge.com:2222/DQ1/manifest.git
repo sync
repo start master --all
ll
repo forall -c "git lfs pull"
cd poky/
./build.sh 
df
./build.sh 
ll
cd build/
ll
cd tmp/deploy/images/dq1/
ll
cd ../../../../
cd ../../
ll
cd CSBL_B0/
ll
./build.sh 
ll
find . -name *CSBL.bin
cd images/
ll
exit
screnn
screen
screen -list
wget https://software-dl.ti.com/jacinto7/esd/processor-sdk-linux-jacinto7/07_03_00_05/exports/ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin
ll
chmod +x ./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
ll ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
mv ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin ti/
ll
cd ti/
ll
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
xeyes
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd yocto-build/
ll
cd ..
ll
./setup.sh 
ll
cd yocto-build/
ll
source oe-layertool-setup.sh 
sudo vim /etc/samba/smb.conf 
sudo apt-get  install screen
screen -S build1
ll
cd ti/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd yocto-build/
ll
cd configs/
ll
cd processor-sdk
ll
cd ..
exit
screen -R
screen -r 25350
screen -R
screen
exit
cd ti/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd yocto-build/
ll
source oe-layertool-setup.sh 
screen
"
screen
screen -R
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
cd yocto-build/
ll
vim oe-layertool-setup.sh 
sudo snap install --classic code 
sudo apt-get update && sudo apt-get upgread && sudo apt autoremove
sudo snap install --classic code 
sudo apt-get update && sudo apt-get upgread && sudo apt autoremove
sudo snap install --classic code 
sudo apt-get update && sudo apt-get upgread && sudo apt autoremove
-A INPUT -p udp --sport 53 --dport 1024:65535 -j ACCEPT
cd ..
cd ~
sudo apt-get update && sudo apt-get upgread && sudo apt autoremove
sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove
sudo apt-get update && sudo apt-get upgread && sudo apt autoremove
sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove
IPT -A OUTPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
IPT=/sbin/iptables
IPT -A OUTPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
whereis iptables
IPT -F
IPT=/sbin/iptables
echo $IPT
IPT -A OUTPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
iptables -A OUTPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
sudo iptables -A INPUT -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT
sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
sudo apt-get update
Err:1 http://kr.archive.ubuntu.com/ubuntu bionic InRelease
vim /etc/network/interfaces
sudo vim /etc/network/interfaces
sudo vim /etc/resolv.conf 
sudo apt-get update
sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove
sudo snap install --classic code
ll
cd ti/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
code .
top
sudo reboot
screen -R
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
code .
cd ..
ll
mkdir -p ReferenceCodes
cd ReferenceCodes/
git clone https://github.com/SensorFusionProject/SensorFusion.gi
screen -d
cd ..
ll
cd ti/
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
cd .devcontainer/
ll
cd ..
code .
sudo apt-get update
sudo vim /etc/network/interfaces
sudo vim /etc/resolv.conf 
sudo apt-get update
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
code .
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/i
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05
code .
screen -R
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cp -r .devcontainer/ ~/
cd ..
ll
mv .devcontainer/ ti/
ll
cd CPBL2/
ll
cd ..
rm -rf CPBL2/
sudo rm -rf CPBL2/
ll
rm -rf repo_bak/ repoconfig_bak/
sudo rm -rf repo_bak/ repoconfig_bak/
ll
cat test.txt 
rm test.txt 
ll
cd ti/
ll
rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05/
sudo rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
tar zcvf .devcontainer/ vscode-container-settings
tar zcvf .devcontainer/ ./
tar -zcvf vscode-docker-settings.tar.gz -c .devcontainer/ .
ll
rm vscode-docker-settings.tar.gz 
cd .devcontainer/
tar -zcvf vscode-docker-settings.tar.gz -c .devcontainer/ .
tar -zcvf vscode-docker-settings.tar.gz -c .
ll
mv vscode-docker-settings.tar.gz ~/ti/
ll
cd .
ll
cd ..
ll
cat vscode-docker-settings.tar.gz
cp vscode-docker-settings.tar.gz 
cp vscode-docker-settings.tar.gz ../
cd ..
ll
tar -xzvf vscode-docker-settings.tar.gz .
ll
rm Dockerfile vscode-docker-settings.tar.gz devcontainer.json devcontainer.env 
ll
cd ti/
rm vscode-docker-settings.tar.gz 
ll
tar -czvf vscode-docker-settings.tar.gz -C .devcontainer/
tar -czvf vscode-docker-settings.tar.gz -C .devcontainer/ .devcontainer/
tar -czvf vscode-docker-settings.tar.gz -C .devcontainer/ .
ll
cp vscode-docker-settings.tar.gz ../
cd ..
tar -xzvf vscode-docker-settings.tar.gz .
ll
rm Dockerfile vscode-docker-settings.tar.gz devcontainer.json devcontainer.env 
cd ti/
ll
rm vscode-docker-settings.tar.gz 
tar -czvf vscode-docker-settings.tar.gz .devcontainer/
ll
cp vscode-docker-settings.tar.gz ../\
cp vscode-docker-settings.tar.gz ../
cd ..
tar -xzvf vscode-docker-settings.tar.gz .
tar -xzvf vscode-docker-settings.tar.gz
ll
cd .devcontainer/
ll
cd ..
rm -rf .devcontainer/
ll
rm vscode-docker-settings.tar.gz 
cd ti/
ll
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
./setup.sh 
cd ..
rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
sudo rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
ll
cd ti/
ll
rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
sudo rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
tar -xzvf vscode-docker-settings.tar.gz
mv .devcontainer/ ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
minicom -
minicom -S ./bin/setupBoard.minicom 
ll
cat Rules.make 
sudo apt-get install build-essential autoconf automake bison flex libssl-dev bc u-boot-tools
minicom -S ./bin/setupBoard.minicom 
ifconfig
screen -list
screen -R
screen -x pts-1.lgecnn-ThinkStation-P310 
screen -S 11857 -X quit
screen -ls
screen -list
ps
mkdir ti2
cd ti
ll
cp ti-processor-sdk-linux-j7-evm-07_03_00_05 ../ti2/
cd ..
cd ti2/
ll
cd ..
cp ti/ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin ti2/
cd ti2/
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/targetNFS/
ll
mkdir test
cd ..
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
minicom -S ./bin/setupBoard.minicom 
cd ../../ti2/ti-processor-sdk-linux-j7-evm-07_03_00_05/
minicom -S ./bin/setupBoard.minicom 
cd ..
cd ../ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
minicom -S ./bin/setupBoard.minicom 
cd ..
rm -rf ti2/
sudo rm -rf ti2/
cd ti/
ll
sudo rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
sudo reboot
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
code .
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
sudo systemctl start nfs-kernel-server.service 
sudo systemctl
sudo systemctl status nfs-server
vi /etc/exports 
sudo vim /etc/exports 
./setup.sh 
cat Rules.make 
sudo apt-get install build-essential autoconf automake bison flex libssl-dev bc u-boot-tools 
ll
cd $HOME
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz?revision=972019b5-912f-4ae6-864a-f61f570e2e7e&la=en&hash=B8618949E6095C87E4C9FFA1648CAA67D4997D88
ll
rm 'gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz?revision=972019b5-912f-4ae6-864a-f61f570e2e7e' 
ll
mv Downloads/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz ./
mv Downloads/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc ./
gpg --keyid-format long --list-options show-keyring gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
gpg --verify gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz
gpg --keyid-format long --list-options show-keyring gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
gpg --verify gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz
mv gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz* Downloads/
ll
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz?revision=972019b5-912f-4ae6-864a-f61f570e2e7e&la=en&hash=B8618949E6095C87E4C9FFA1648CAA67D4997D88
cd Downloads/
ll
gpg --verify gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
mv gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz ../
mv gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf.tar.xz ../
cd ..
ll
rm 'gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz?revision=972019b5-912f-4ae6-864a-f61f570e2e7e' 
ll
tar -xzvf gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz .
tar -xzvf gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz
mv gcc-arm-10.2-2020.11-x86_64-a* Downloads/
ll
l
ll
mv Downloads/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu ./
ll
GCC102PATH=$HOME/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$HOME/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
dc ..
cd ..
ll
cd /
ll
vim ~/.bashrc 
sudo vim ~/.bashrc 
cd Downloads/
ll
gpg --keyid-format long --list-options show-keyring gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc?revision=9209a723-af18-46c9-9c3e-3d2e3572e220&la=en&hash=15703A3D3E2735F069EA1282363247724E92E216
1
ll
rm gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc*
ll
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc?revision=9209a723-af18-46c9-9c3e-3d2e3572e220&la=en&hash=15703A3D3E2735F069EA1282363247724E92E216
1
ll
rm gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc*
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc
ll
gpg --keyid-format long --list-options show-keyring gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
gpg --version
gpg --help
gpg --import gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
cat gpgkey
cd ~/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/
code .
echo $GCC102PATH
echo $PATH
code ~/.bashrc 
GCC102PATH=$HOME/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$HOME/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin
export PATH=$GCC102PATH:$PATH
echo $GCC102PATH
code ~/.bashrc 
ll
pwd
cd ..
ll
cd gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/
ll
cd ..
rm -rf gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/ gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/
ll
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz.asc
gpg --import gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
gpg --keyid-format long --list-options show-keyring gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz.asc 
gpg --verify gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz.asc gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz
cd Do
cd Downloads/
ll
cd ..
ll
tar -xzvf gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz
tar -xzvf gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz .
tar -xvf gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz .
tar -xvf gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz
ll
mv gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz* Downloads/
ll
cd Downloads/
ll
mv gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf.tar.xz ../
ll
cd ..
ll
tar -xvf gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf.tar.xz 
ll
mv gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf ./Downloads/
ll
cd Downloads/
ll
mv gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/ ../
cd ..
mv gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf.tar.xz ./Downloads/
ll
gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihfcd ..
docker ps -a
cd -
cd ..
cd ti/
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
vim ~/.bashrc 
dc ..
cd ..
mv gcc-arm-9.2-2019.12-x86_64-a* ti/
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/yocto-build/build/
cd ..
ll
sudo rm -rf build/
ll
df
df -h
cd ..
sudo fdisk -l
cd /mn
cd /mnt
ll
cd hdd6t
ll
sudo mkdir home
ll
cd hom
'
df h
df -h
sudo cp -rp /home/josh/ ./
ll
cd josh/
ll
cd ..
sudo mv /home /home.orig
sudo mv /home.orig /home
sudo mv /home/josh /home/josh.orig
ll /home/
ll /home/ailab/
ll /home/lgecnn
sudo mv /home /home.orig
ll /
sudo mkdir /home
ll
ll home
cd ..
cd hdd6t/ 
rm -rf home/
ll
cd /
ll
cd mnt/hdd6tll
cd mnt/hdd6t/
ll
ll OMS_SoC_Task_ExtraStorage/
ll
rm -rf lost+found/
ll
cd /
df -h
sudo umount /dev/sdc1
sudo mount /dev/sdc1 /home/
ll
cd home
ll
cd home2/
ll
mv henry/ ../
sudo mv henry/ ../
ll
cd ..
ll
rm -rf home2/
ll
ll /mnt/
df /dev/sdc1 
cd ..
cd /mnt/
cd ~
ll
pwd
cd ti/
ll
sdo cp /etc/fstab  /etc/fstab.orig
sudo cp /etc/fstab  /etc/fstab.orig
sudo vim /etc/fstab
sudo reboot now
cd ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
cd ..
tar -xzvf vscode-docker-settings.tar.gz
mv .devcontainer/ ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
code .
mv .devcontainer/ ../
cd ..
code .
docker ps -a
docker rm dc52ad290bd8 c701a734422a 6d333c7ddf2e 8ff83dba0ad4
docker ps -a
docker images
code .
docker ps -a
docker rm 207639c2b764
code .
cd .devcontainer/
ll
sudo chown -R josh .
l
ll
docker ps -a
docker rm 31abe1f31620
dc ..
cd ..
code .
codde .
code .
ll
cd ti
cd ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin
cd ti-processor-sdk-linux-j7-evm-07_03_00_05
ll
cd yocto-build
ll
rm -rf 
rm -rf build/
cd /mnt/
cd hdd6t/
cd josh/
ll
sudo cd josh/
cd josh/
cd /home/
cd josh/
ll
cd /home/josh/ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
code .
cd ..
code .
df /dev/sdc1
cd /
cd ti/
code .'
code .
cd ..
cd /
cat /proc/mounts | grep /dev
ll /mnt/
cd hdd6t
cd /mnt/hdd6t
ll
cd /
cat /proc/mounts | grep /dev
cd /
fsck /dev/sdc1
fsck -n -f
sudo fsck -n -f
sudo reboot
cd /
ll
cd /home.orig/
ll
cd josh.orig/
ll
cd ~
pwd
ll
mkdir SandBox
cd SandBox/
git clone https://github.com/microsoft/onnxruntime.git
git clone https://github.com/apple/coremltools
git reset --hard 523d5e03d86c26267ee6bdf17dd20f6ce6bdadd7
cd coremltools/
git reset --hard 523d5e03d86c26267ee6bdf17dd20f6ce6bdadd7
cd ..
rm -rf onnxruntime/
cd ../ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
cd yocto-build/
ll
cd build/
ll
rm -rf sstate-cache/
cd ..
df -h
cd ..
ll
cd .devcontainer/
ll
cd ..
vim start_yocto_build.sh
ll
sudo chmod 755 start_yocto_build.sh 
ll
cp start_yocto_build.sh ti-processor-sdk-linux-j7-evm-07_03_00_05/yocto-build/
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/yocto-build/
cat start_yocto_build.sh 
cd ..
mv yocto-build/start_yocto_build.sh  ./
ll
cd yocto-build/
cd build/
rm -rf cache/ sstate-cache/
cd ..
cd ...
ll
cd ..
ll
cd yocto-build/
rm -rf build/
cd build/
ll
rm -rf cache/
ll
rm -rf pyshtables.py 
cd arago-tmp-external-arm-glibc/
ll
rm -rf work-shared/
ll
rm -rf abi_version 
ll
rm -rf cache/
rm -rf deploy/
rm -rf log
rm -rf sstate-control/
rm -rf work
ll
rm -rf qa.log 
ll
cd work
ll
rm -rf x86_64-linux/
cd ..
cd /home
ll
mv josh ../home.orig/
cd josh/
cd ti/
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd yocto-build/
rm -rf build/
cd /
cd /home
l
sudo mv josh/ ../home.orig/
cd /home.orig/
ll
mb hyunsookim/ ../home/
sudo mv hyunsookim/ ../home/
dc ..
cd ..
cd /home
ll
cd hyunsookim/
su
sudo cd hyunsookim/
cd ..
cd /home.orig/
ll
rm -rf josh.orig/
sudo rm -rf josh.orig/
ll
sudo rm -rf sinhyun/
sudo rm -rf ailab/
ll
cd ..
cd home
ll
sudo mv hyunsookim/ ../home.orig/
sudo mv henry/ ../home.orig/
ll
cd OMS_SoC_Task_ExtraStorage/
ll
cd ..
ll
cd jo
cd ..
ll
cd home-orig
cd /home-orig
cd /home.orig
ll
mv josh /home/josh.bak
sudo mv josh /home/josh.bak
dc ..
cd ..
ll /mnt/
cd sdc1
cd /mnt/sdc1
ll
cd ..
cd hdd6t
ll
sudo umount /dev/sdc1
sudo reboot
sudo mv /home /home.bak
sudo umount /dev/sdc1
ll
cd /home
ll
cd suod umount /home
cd ..
sudo umount /home
ll /mnt
cd sdc1
ll
cd /mnt
cd sdc1
ll
cd ..
sudo umount /home
df -h
sudo vim /etc/fstab
sudo mv /etc/fstab fstab.bak
sudo mv /etc/fstab.orig /etc/fstab
ll /etc/
sudo reboot
cd home/
cd ..
ll
cd home/
ll
ls -al
sudo mkdir josh
ll
ls -al
cd /mnt/hdd6t/
cd josh
ll
cd ..
ls -al
cd josh
ll
ls -al
mv .* /home/josh/
sudo mv -f .* /home/josh/
cd ..
sudo reboot
ll
cd /mnt/hdd6t/
ll
cd josh
ll
cd ..
cd josh.bak/
ll
cd ..
rysnc -a -v josh.orig/ /home/josh/
sudo apt-get install rsync
rysnc -a -v josh.orig/ /home/josh/
cp -rlf josh.orig/ /home/josh/
cp -rlf josh.orig /home/josh/
ll
cp -rlf josh.bak/ /home/josh/
sudo cp -rlf josh.bak/ /home/josh/
cd /home
ll
cd josh/
ll
rm -rf josh.bak/
sudo rm -rf /home/josh/josh.bak/
ll
cd /mnt/hdd6t/
ll
cd josh.bak/
ll
cd ..
ll
mv josh.bak/* josh/
ll josh.bak/
sudo mv -r josh.bak/* josh/
sudo mv -f josh.bak/* josh/
sudo mv josh.bak/* josh/
sudo cp -rlf josh.bak/* josh/
ll
mv hyunsookim/ /home/
sudo mv hyunsookim/ /home/
ll
sudo mv hyunsookim/ /home/
cd hyunsookim/
ll
sudo mv * /home/hyunsookim/
ll
cd ll
cd /home/
ll
cd josh/
ll
ll /mnt/hdd6t/josh
ll /mnt/hdd6t/josh.bak
sudo mv /mnt/hdd6t/josh/ti/ /home/josh/
ll
cd ti/
ll
cd /mnt/hdd6t/
ll
cd josh
ll
sudo mv * ../josh.bak/
sudo mv -rf * ../josh.bak/
sudo mv -f * ../josh.bak/
cd ..
mv josh josh.bak2
sudo mv josh josh.bak2
sudo mkdir josh
sudo mv /home/josh/ti ./josh/
cd ..
cd ~
l
ll
ln -s /mnt/hdd6t/josh/ti/ ti
sudo ln -s /mnt/hdd6t/josh/ti/ ti
cd ti/
ll
sudo reboot
sudo mv /mnt/hdd6t/josh.bak//.Xauthority ./
cd ..
ll
rm -rf hyunsookim/
sudo rm -rf hyunsookim/
ll
ll /mnt/hdd6t/hyunsookim/
ll /mnt/hdd6t/josh.bak/
ll /mnt/hdd6t/josh.bak2/
ll /mnt/hdd6t/josh.bak/
cd /mnt/hdd6t/josh.bak/josh/
ll
cd ti/
ll
cd ..
../
cd ../
ll
rm josh/
rm -r josh/
sudo rm -r josh/
ll
sudo mv .xorgxrdp.11.log* /home/josh/
ll
pwdd
pwd
ll /home/
sudo chown josh.josh .
ll
ll /home/
sudo chmod 755 ti
ll
sudo chmod 755 ti
ll
sudo chmod -h 755 /mnt/hdd6t/josh/ti/
ll
cd /mnt/hdd6t/josh.bak
ll
mv .gitconfig ~/
ll
mv .ssh  ~/
cd .ssh
ll
mv id_rsa ~/.ssh/
mv id_rsa.pub ~/.ssh/
ll
mv known_hosts  ~/.ssh/
ll
cd ..
ll
rm -rf .ssh/
ll
cd ..
ll
sudo chown josh.josh josh
ll
cd josh
ll
cd i
cd ti/
ll
locale
sudo gparted
sudo apt-get install gparted
exit
sudo passwd root
ll
tar -xzvf ssh.tar .
ll
mkdir repos
cd repos/
git clone git@github.com:coolwindjo/post-format-settings
sudo apt-get update
sudo apt-get install xorgxrdp
dpkg -l |grep xserver-xorg-core
sudo apt-get install xrdp -y
sudo apt-get install xorgxrdp-hwe-18.04
sudo system status xrdp
sudo systemctl status xrdp
sudo vim /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
sudo apt-get install gparted
su
sudo apt-get install gparted
sudo reboot
su
sudo apt-get install gparted
sudo mkdir /mnt/hdd4tb
sudo vim /etc/fstab
sudo mount /mnt/hdd4tb/
cd /mnt/hdd4tb/ti/
ll
cd /
ll
sudo mkdir soc
cd soc/
sudo ln -s /mnt/hdd4tb/ti/ ti
ll
cd ti/
ll
rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
sudo rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
./setup.sh 
sudo ./setup.sh 
cd -
code .
sudo apt-get update
sudo fdisk -l
cd /soc/ti/
sudo ./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
cd ..
cd ~
ll
cd repos/post-format-settings/
ll
cd others/
ll
cd /soc/ti/ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd ..
code .
cd ~/repos/post-format-settings/
./08_add_docker-group.sh 
fdisk -l
sudo fdisk -l
sudo mkdir /mnt/hdd6tb
sudo vim /etc/fstab
sudo mount /mnt/hdd6tb/
cd /mnt/hdd6tb/
ll
cd josh
ll
cd ti/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd ..
mv vscode-docker-settings.tar.gz /soc/ti/
sudo mv vscode-docker-settings.tar.gz /soc/ti/
cd /soc/ti/
code .
sudo ./ti-processor-sdk-linux-j7-evm-07_03_00_05-Linux-x86-Install.bin 
cd /mnt/hdd6tb/
ll
cd josh
cd ti
ll
c ..
cd ..
ll
cd ti/
sudo mv gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu/ /soc/ti/
sudo mv gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/ /soc/ti/
cd /soc/ti/
ll
tar -xzvf vscode-docker-settings.tar.gz .
sudo tar -xzvf vscode-docker-settings.tar.gz
ll
cd /mnt/hdd6tb/
cd ti
ll
cd josh/ti/
ll
vim .devcontainer/Dockerfile 
rm -rf /soc/ti/.devcontainer/
sudo rm -rf /soc/ti/.devcontainer/
sudo mv .devcontainer/ /soc/ti/
ll
cd -
cd /soc/ti/
ll
cp -r .devcontainer/ ~/repos/post-format-settings/others/
cd ~/repos/post-format-settings/others/
ll
cd /soc/ti/
ll
mv vscode-docker-settings.tar.gz ../
sudo mv vscode-docker-settings.tar.gz ../
cd ..
ll
cd /mnt/hdd4tb/
ll
tar -xzvf vscode-docker-settings.tar.gz 
sudo tar -xzvf vscode-docker-settings.tar.gz 
ll
rm -rf .devcontainer/ vscode-docker-settings.tar.gz 
sudo rm -rf .devcontainer/ vscode-docker-settings.tar.gz 
ll
cd ti/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd ..
ll
rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05/
sudo rm -rf ti-processor-sdk-linux-j7-evm-07_03_00_05/
ll
cd ti-processor-sdk-linux-j7-evm-07_03_00_05/
./setup.sh 
sudo ./setup.sh 
cd ~/
ll
cd repos/post-format-settings/
ll
git status
git add --all && git  commit -m "add devcontainer"
code .
./04_set_git_config_and_clone_SF.sh 
git add --all && git  commit -m "add devcontainer"
git push
git pull
sudo umount /mnt/hdd6tb 
sudo umount /mnt/hdd4tb 
sudo reboot
