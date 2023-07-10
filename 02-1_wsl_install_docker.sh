sudo apt-get remove docker docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker /etc/docker /etc/apparmor.d/docker /var/run/docker.sock /usr/local/bin/docker-compose /etc/docker
sudo groupdel docker ~/.docker

curl https://get.docker.com | sh

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt autoremove -y
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
# sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
# sudo apt-get install -y --allow-downgrades docker-ce=5:20.10.23~3-0~ubuntu-jammy docker-ce-cli=5:20.10.23~3-0~ubuntu-jammy containerd.io
sudo apt-get install -y docker-ce=5:24.0.2-1~ubuntu.22.04~jammy docker-ce-cli=5:24.0.2-1~ubuntu.22.04~jammy containerd.io
# sudo apt-get install -y docker-ce=5:20.10.13~3-0~ubuntu-focal docker-ce-cli=5:20.10.13~3-0~ubuntu-focal containerd.io
# sudo apt-get install -y docker-ce=5:20.10.13~3-0~ubuntu-bionic docker-ce-cli=5:20.10.13~3-0~ubuntu-bionic containerd.io
