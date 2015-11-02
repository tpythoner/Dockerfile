# 设置继承镜像
FROM	ubuntu:latest

# 提供一些作者的信息
MAINTAINER		tpythoner, tpythoner@gmail.com

# 安装MongoDB:
# 载入 MongoDB 公共 GPG key 并且 创建MongoDB 列表文件
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee /etc/apt/sources.list.d/10gen.list

# 更新源并且安装MongoDB
RUN apt-get update
RUN apt-get install -y -q mongodb-org

# 创建MongoDB数据目录
RUN mkdir -p /data/db

# 对外开放MongoDB端口
EXPOSE 27017

# 设置后台启动MongoDB
ENTRYPOINT ["usr/bin/mongod"]
