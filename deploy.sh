#!/bin/bash
echo "Stop old version"
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
echo "build new image"
docker container prune -f
docker image prune --all --force
echo "deploy new version"
docker build . -t dkdkt/latest
docker run -p 80:80 --name dkdkt dkdkt/latest
echo "deploy done"