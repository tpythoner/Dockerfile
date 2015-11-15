# 设置继承镜像
FROM	ubuntu:latest

# 提供一些作者的信息
MAINTAINER		tpythoner, tpythoner@gmail.com

#下面开始运行命令,此处更改ubuntu的源为国内163的源
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install redis-server

#开放Redis端口
EXPOSE	6379

#后台运行Redis
ENTRYPOINT	["/usr/bin/redis-server"]
