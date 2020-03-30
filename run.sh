#!/bin/bash

#docker images
#docker ps

PULL_COMMAND=`docker pull simasware/simasware.com:latest | grep "Status: Image is up to date for simasware/simasware.com:latest"`
if [ "$PULL_COMMAND" != "Status: Image is up to date for simasware/simasware.com:latest" ];then
        echo "Upgrading"
        docker rm -f simasware.com
        docker images -a | grep "simasware.com" | awk '{print $3}' | xargs docker rmi -f
        docker pull simasware/simasware.com:latest 
        docker run -dit --name simasware.com --restart=always -p 8080:80 simasware/simasware.com:latest
else
        echo "No updated"
fi
