#!/bin/bash

docker build -t my-go .

docker rm appgo -f
docker run -ti --name appgo my-go

docker commit appgo valmirphp/codeeducation:latest
docker commit appgo valmirphp/codeeducation:$1

docker push valmirphp/codeeducation:latest
docker push valmirphp/codeeducation:$1
