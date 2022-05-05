
	Install Docker and Docker compose on AWS linux ami
Commands used:
Docker CE Install and start
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

docker-compose install
Copy the appropriate docker-compose binary from GitHub:

sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
Fix permissions after download:
sudo chmod +x /usr/local/bin/docker-compose
Verify success:
docker-compose version
