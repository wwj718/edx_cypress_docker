#
# This is a tweaked version of https://github.com/appsembler/configuration/wiki/Creating-a-Docker-image 
#

FROM wwj718/edx_cypress_docker:1.01
MAINTAINER wwj718 <wuwenjie718@gmail.com>
#user root:edx
RUN echo 'root:edx' | chpasswd
#enable ssh
RUN apt-get install -y openssh-server
RUN sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
#ADD config/sshd.conf /edx/app/supervisor/conf.d/
#RUN /bin/chown supervisor.supervisor /edx/app/supervisor/conf.d/sshd.conf
#RUN /bin/rm /edx/var/forum/forum.sock
#https://docs.docker.com/reference/builder/


#add 
ADD config/wwjtest.py /tmp/

CMD /usr/sbin/sshd -D;/sbin/my_init --enable-insecure-key

EXPOSE 22 80 5000 5010 18010 18020

