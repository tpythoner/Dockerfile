#!/bin/bash

docker run -i -t -d -p 2222:22 -p 27017:27017 --name mongodb centos:mongodb
