
FROM        centos:latest
MAINTAINER  tpythoner tpythoner@gmail.com

#yum安装sshd服务
RUN         yum install -y openssh-server

#创建sshd
RUN         mkdir /var/run/sshd
RUN         ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN         ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key

#设置root密码以及添加tpythoner用户
RUN         /bin/echo 'root:mypwd' |chpasswd
RUN         useradd tpythoner
RUN         /bin/echo 'tpythoner:mypwd' |chpasswd

#取消pam限制
RUN         /bin/sed -i 's/.*session.*required.*pam_loginuid.so.*/session optional pam_loginuid.so/g' /etc/pam.d/sshd
RUN         /bin/echo -e "LANG=\"en_US.UTF-8\"" > /etc/default/local

#安装golang
ADD			go1.5beta1.linux-amd64.tar.gz /root
ADD			golang.conf /root/golang.conf
RUN			mv /root/go /usr/local/
RUN			cat /root/golang.conf >> /etc/profile
RUN			echo "source /etc/profile" >> /root/.bashrc
RUN			mkdir -p /var/golang


#开发端口
EXPOSE      22
EXPOSE      8000

#启动sshd服务
CMD			/usr/sbin/sshd -D
