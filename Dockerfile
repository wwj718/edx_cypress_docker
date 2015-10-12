#
# This is a tweaked version of https://github.com/appsembler/configuration/wiki/Creating-a-Docker-image 
#

FROM wwj718/edx_cypress_docker:1.04
MAINTAINER wwj718 <wuwenjie718@gmail.com>
#user root:edx
ADD config/themes /themes
RUN chmod -R +x /themes
ADD edxapp_json/themes /edx/app/edxapp/themes
ADD edxapp_json/lms.env.json /edx/app/edxapp/
RUN /bin/chown edxapp.edxapp /edx/app/edxapp/lms.env.json
RUN /bin/chown -R edxapp.edxapp /edx/app/edxapp/themes
#USER root
#WORKDIR /edx/app/edxapp/edx-platform
#RUN paver update_assets lms --settings=aws
#RUN source /edx/app/edxapp/edxapp_env&paver update_assets lms --settings=aws

#add 
#ADD config/wwjtest.py /tmp/

#CMD /usr/sbin/sshd -D&/sbin/my_init --enable-insecure-key

EXPOSE 22 80 5000 5010 18010 18020

