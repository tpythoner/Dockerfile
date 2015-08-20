#!/bin/bash

docker run -i -t -d -p 2442:22 -p 6379:6379 --name redis centos:redis
