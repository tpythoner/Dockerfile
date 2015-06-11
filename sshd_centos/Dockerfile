
FROM        centos:7
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

#ADD run.sh /run.sh
#RUN chmod 755 /run.sh

EXPOSE      22
EXPOSE      80

#CMD ["/run.sh"]
CMD			/usr/sbin/sshd -D
