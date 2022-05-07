sudo amazon-linux-extras install
docker
sudo service docker start

Copy the
appropriate docker-compose binary
from GitHub:


sudo
curl -L
https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname
-s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo
curl -L
https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname
-s)-$(uname -m) -o /usr/local/bin/docker-compose


Fix permissions after download:

sudo
chmod +x /usr/local/bin/do

Part 1


Write a bash script gencsv.sh to generate a file named inputFile whose content looks like

#!/bin/bash
RANDOM=$$
num=0
ARG1=${1:-10}
while [[ ${num} -le ${ARG1} ]]
do
echo $num $RANDOM
(( num = num + 1 ))
Done


Copy inputFile to container

docker cp .agitated_villani:/csvserver/

docker commit csvapp infracloudio/csvserver:latest

login into container to see ifinputFile is present by command

docker exec -it agitated_villani /bin/bash

Get
shell access to the container and find the port on which the application
is listening. Once done, stop / delete the running container.

docker stop <container name>
docker rm $(docker ps -aq)- Remove all exited containers
The application is accessible on the host at http://localhost:9393

docker exec -it condescending_ride ./csvserver


