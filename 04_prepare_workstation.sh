sudo apt-get update -y && sudo apt-get install -q -y \
	net-tools \
	libpcap-dev \
	libavformat-dev \
	libavcodec-dev \
	libavutil-dev \
	libswscale-dev \
	gcovr \
	linuxptp \
	ethtool \
&& sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

sudo apt-get update -y && sudo apt-get install -q -y \
	qt5-default \
	qttools5-dev \
&& sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

sudo bash -c "echo '# MOBIS' >> /etc/hosts"
sudo bash -c "echo '10.230.10.227 jira.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.10.227 jira.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.15.226   medp.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.10.227 jira.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.14.66 integrity.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.15.205 bitbucket.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.10.229 confluence.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.9.60 artifacts.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.112.242 docker.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.115.205 devops.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.10.156.33    mcloud.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.10.156.210   one.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '101.1.39.47 igw.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '10.230.112.181 coverity.mobis.co.kr' >> /etc/hosts"
sudo bash -c "echo '211.217.53.139  tas.mobis.co.kr' >> /etc/hosts"

sudo bash -c "echo '# HYUNDAI' >> /etc/hosts"
sudo bash -c "echo '10.7.18.27 synergy.ccos.dev' >> /etc/hosts"
sudo bash -c "echo '10.7.18.20 jira.ccos.dev' >> /etc/hosts"
sudo bash -c "echo '10.7.18.12 repo.ccos.dev' >> /etc/hosts"
sudo bash -c "echo '10.7.18.28 bamboo.ccos.dev' >> /etc/hosts"
