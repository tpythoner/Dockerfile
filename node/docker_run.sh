#!/bin/bash

docker run -i -t -d -p 3000:3000 -p 2002:22 -v /Users/tony/Code/:/home ubuntu:nodejs
