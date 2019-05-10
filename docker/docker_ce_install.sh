sudo apt update
sudo apt install-y  apt-transport-https ca-certificates curl software-properties-common
sudo echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" >>/etc/apt/sources.list.d/docker.list
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt update
sudo apt install -y docker-ce
