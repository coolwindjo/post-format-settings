sudo apt-get --purge -y remove 'cuda*' && \
sudo apt-get --purge -y remove 'nvidia*' && \
sudo apt-get --purge -y remove 'libnvidia-*' && \
sudo apt-get --purge -y remove 'nsight-compute-*'
ls -al /usr/local/ | grep cuda-
dpkg -l | grep -i nvidia