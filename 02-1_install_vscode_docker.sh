# sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt autoremove -y
sudo snap install --classic code

# Docker Install
  # apt-transport-https \
sudo apt-get update -y && sudo apt-get install -q -y --no-install-recommends \
  ca-certificates \
  curl \
  gnupg \
  lsb-release \
&& sudo rm -rf /var/lib/apt/lists/*

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
# sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
sudo apt-get install -y docker-ce=5:24.0.2-1~ubuntu.22.04~jammy docker-ce-cli=5:24.0.2-1~ubuntu.22.04~jammy containerd.io
# sudo apt-get install -y docker-ce=5:20.10.18~3-0~ubuntu-focal docker-ce-cli=5:20.10.18~3-0~ubuntu-focal containerd.io
# sudo apt-get install -y docker-ce=5:24.0.2-1~ubuntu.18.04~bionic docker-ce-cli=5:24.0.2-1~ubuntu.18.04~bionic containerd.io
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
