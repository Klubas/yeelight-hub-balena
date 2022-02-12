#!/bin/bash
docker stop $(docker ps -a -q)  #stop all containers
docker rm $(docker ps -a -q)    #remove all containers
docker rmi $(docker images -q) #remove all images
