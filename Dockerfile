#
# This is a tweaked version of https://github.com/appsembler/configuration/wiki/Creating-a-Docker-image 
#

FROM appsembler/edx-lite-cypress:latest
MAINTAINER wwj718 <wuwenjie718@gmail.com>

#USER forum
ADD config/forum-supervisor.sh /edx/app/forum/
RUN /bin/chmod +x /edx/app/forum/forum-supervisor.sh
RUN /bin/chown forum.forum /edx/app/forum/forum-supervisor.sh
#RUN /bin/rm /edx/var/forum/forum.sock
#https://docs.docker.com/reference/builder/
#CMD /bin/rm /edx/var/forum/forum.sock


#add 
ADD config/wwjtest.py /tmp/


EXPOSE 80 5000 5010 18010 18020

