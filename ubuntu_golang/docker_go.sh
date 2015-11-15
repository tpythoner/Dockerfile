#!/bin/bash

docker run -d -v /Users/tony/:/home/Mac/ -p 2122:22 -p 8000:8000 --name=go -h=go ubuntu:go ./run.sh


