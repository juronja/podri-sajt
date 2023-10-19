#!/bin/bash

# stop and remove the container
docker stop podri-sajt && docker rm podri-sajt

# build new image from github (needed only if you dont have a ducker hub repo)
# docker build https://github.com/juronja/podri.git#main -t juronja/podri-sajt

# removes the current image so docker will pull a new one
docker rmi juronja/podri-sajt:latest

# run the container
docker run -d -p 8989:80 --restart unless-stopped --name podri-sajt juronja/podri-sajt:latest
