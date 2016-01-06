#!/bin/bash 

docker run -i -t -d -v /Users/tony/:/home/tony/ -p 2322:22 -p 9000:9000 -p 80:80 --name=ubuntu_go -h=ubuntu_go ubuntu:go /run.sh
