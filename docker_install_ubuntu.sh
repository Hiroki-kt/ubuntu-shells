# !bin/bash

# install docker ce (ref. https://docs.docker.com/engine/install/ubuntu/)
sudo apt-get update
sudo apt-get install \
  apt-transport-https\
  ca-certificates\
  curl\
  gnupg-agent\
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# manage docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

# install docker compose (ref. https://docs.docker.com/compose/install/)
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
