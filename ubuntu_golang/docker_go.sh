#!/bin/bash

docker run -d -v /Users/tony/:/home/Mac/ -p 2322:22 -p 9000:9000 --name=golang ubuntu:golang

# root:123456
# tpythoner:tony95043
