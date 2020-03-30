#!/bin/bash

#docker images
#docker ps

PULL_COMMAND=`docker pull simasware/simasware.com:latest | grep "Status: Image is up to date for simasware/simasware.com:latest"`
if [ "$PULL_COMMAND" != "Status: Image is up to date for simasware/simasware.com:latest" ];then
        echo "Upgrading"
        docker rm -f test-site
        docker images -a | grep "simasware.com" | awk '{print $3}' | xargs docker rmi -f
        docker pull simasware/test-site:latest 
        docker run -dit --name test-site --restart=always -p 8080:80 simasware/test-site:latest
else
        echo "No updated"
fi
