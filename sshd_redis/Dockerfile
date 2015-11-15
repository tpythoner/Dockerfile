
FROM        centos:6
MAINTAINER  tpythoner tpythoner@gmail.com"

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

#Redis
ADD redis-2.8.9.tar.gz /root
RUN	yum install -y gcc gcc-c++ tcl
RUN	cd /root/redis-2.8.9 && make MALLOC=libc
RUN mkdir -p /usr/local/redis/bin && mkdir /usr/local/redis/conf
RUN	cd /root/redis-2.8.9/src && cp redis-benchmark redis-check-aof redis-check-dump redis-sentinel redis-server redis-cli /usr/local/redis/bin/
#RUN	cd .. && cp redis.conf /usr/local/redis/conf/
ADD	redis.conf /usr/local/redis/conf/
RUN	cd /usr/local/bin && ln -s /usr/local/redis/bin/redis-cli ./


EXPOSE      22
EXPOSE      6379

CMD ["/run.sh"]
