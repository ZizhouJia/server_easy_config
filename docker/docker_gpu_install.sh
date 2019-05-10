curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
	  sudo apt-key add -
distribution="ubuntu18.04"
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
	  sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update

sudo apt-get install -y nvidia-docker2