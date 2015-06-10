
FROM        centos:6
MAINTAINER  tpythoner tpythoner@gmail.com

#RUN         yum install -y openssh openssh-server openssh-clients
RUN         yum install -y openssh-server
RUN         mkdir /var/run/sshd
RUN         ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN         ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN         /bin/echo 'root:mypwd' |chpasswd
RUN         useradd tpythoner
RUN         /bin/echo 'tpythoner:mypwd' |chpasswd
RUN         /bin/sed -i 's/.*session.*required.*pam_loginuid.so.*/session optional pam_loginuid.so/g' /etc/pam.d/sshd
RUN         /bin/echo -e "LANG=\"en_US.UTF-8\"" > /etc/default/local

ADD run.sh /run.sh
RUN chmod 755 /run.sh

#MongoDB
ADD	mongodb-linux-x86_64-3.0.3.tgz /root/
RUN mv /root/mongodb-linux-x86_64-3.0.3 /usr/local/mongodb
#创建数据存储文件
RUN	mkdir -p /usr/local/mongodb/data
#创建数据日子文件
RUN	mkdir -p /usr/local/mongodb/log
#添加配置文件
ADD	mongod.conf /usr/local/mongodb/
#创建软连接
RUN cd /usr/local/bin && ln -s /usr/local/mongodb/bin/mongo ./

#开放端口
EXPOSE      22
EXPOSE      27017

CMD ["/run.sh"]
