#!/bin/bash 

docker run -i -t -d -p 2022:22 -p 8000:8000 -p 8080:80 --name=golang -h=golang ubuntu:golang /run.sh
