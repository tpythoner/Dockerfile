#设置继承镜像
FROM ubuntu:latest

#提供一些作者的信息
MAINTAINER tpythoner tpythoner@gmail.com

#下面开始运行命令,此处更改ubuntu的源为国内163的源
#RUN echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
#RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
#RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
#RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
#RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
#RUN apt-get update

#安装 ssh 服务
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh

#取消pam限制
RUN sed -ri 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd

#复制配置文件到相应位置,并赋予脚本可执行权限
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
RUN chmod 755 /run.sh

RUN	echo 'root:123456' | chpasswd

#安装golang
ADD			go1.5.1.linux-amd64.tar.gz /root
ADD			golang.conf /root/golang.conf
RUN			mv /root/go /usr/local/
RUN			cat /root/golang.conf >> /etc/profile
RUN			echo "source /etc/profile" >> /root/.bashrc
RUN			mkdir -p /var/lib/golang


#开发端口
EXPOSE      22
EXPOSE      9000

#设置自启动命令
CMD ["/run.sh"]
