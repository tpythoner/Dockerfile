#!/bin/bash 

docker run -d -v /Users/tony/:/home/tony/ -p 2022:22 -p 8000:8000 --name=golang -h=golang centos:golang
