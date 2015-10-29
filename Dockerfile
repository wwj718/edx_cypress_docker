#
# This is a tweaked version of https://github.com/appsembler/configuration/wiki/Creating-a-Docker-image 
#

FROM wwj718/edx_cypress_docker:1.13
MAINTAINER wwj718 <wuwenjie718@gmail.com>
#user root:edx

#ADD config/docker.py /edx/app/edxapp/edx-platform/lms/envs/
#RUN /bin/chown edxapp.edxapp /edx/app/edxapp/edx-platform/lms/envs/docker.py
#add 
ADD supervisor_conf/* /edx/app/supervisor/conf.d/
RUN rm -rf /edx/app/edxapp/edx-platform
RUN git clone -b edx_cn/cypress_cn https://github.com/easy-edx/edx-platform.git /edx/app/edxapp/edx-platform
RUN /bin/chown -R edxapp.edxapp /edx/app/edxapp/edx-platform
#有缺陷 会导致lms 500 cms没有样式
#镜像会变为6+G,需要export为里程碑版本
#CMD /usr/sbin/sshd -D&/sbin/my_init --enable-insecure-key

EXPOSE 22 80 5000 5010 18010 18020

