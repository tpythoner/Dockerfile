#!/bin/bash 

docker run -i -t -d -v /Users/tony/:/home/tony/ -p 8080:8080 -p 2222:22 --name=nginx_php -h=nginx_php ubuntu:nginx_php /run.sh
