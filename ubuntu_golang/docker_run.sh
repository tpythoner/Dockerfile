#!/bin/bash 

docker run -i -t -d -v /Users/tony/:/home/tony/ -p 2122:22 -p 9000:9000 --name=ubuntu_golang -h=ubuntu_golang ubuntu:golang /run.sh
