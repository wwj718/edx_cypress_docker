#
# This is a tweaked version of https://github.com/appsembler/configuration/wiki/Creating-a-Docker-image 
#

FROM wwj718/edx_cypress_docker:1.11
MAINTAINER wwj718 <wuwenjie718@gmail.com>
#user root:edx

#ADD config/docker.py /edx/app/edxapp/edx-platform/lms/envs/
#RUN /bin/chown edxapp.edxapp /edx/app/edxapp/edx-platform/lms/envs/docker.py
WORKDIR /edx/app/edxapp/edx-platform
RUN grep -rl 'ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js' ./ | xargs sed -i 's#ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js#cdn.bootcss.com/jquery/1.10.1/jquery.min.js#g'
WORKDIR /edx/app/edxapp/venvs/edxapp/lib/python2.7/site-packages
RUN grep -rl 'ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js' ./ | xargs sed -i 's#ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js#cdn.bootcss.com/jquery/2.1.0/jquery.min.js#g'
#add 
#ADD config/wwjtest.py /tmp/

#CMD /usr/sbin/sshd -D&/sbin/my_init --enable-insecure-key

EXPOSE 22 80 5000 5010 18010 18020

