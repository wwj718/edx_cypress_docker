#
# This is a tweaked version of https://github.com/appsembler/configuration/wiki/Creating-a-Docker-image 
#

FROM wwj718/edx_cypress_docker:1.02
MAINTAINER wwj718 <wuwenjie718@gmail.com>
#user root:edx

ADD edxapp_json/*.json /edx/app/edxapp/
RUN /bin/chown edxapp.edxapp /edx/app/edxapp/*.json

#add 
#ADD config/wwjtest.py /tmp/

#CMD /usr/sbin/sshd -D&/sbin/my_init --enable-insecure-key

EXPOSE 22 80 5000 5010 18010 18020

