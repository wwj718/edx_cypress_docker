# edx_cypress_docker

warning: edx_cypress_docker is no longer maintained , I recommend using [openedx-docker](https://github.com/regisb/openedx-docker) and [devstack](https://github.com/edx/devstack)

## Version 1.22
*  replace platform name(edx_cn)

## Version 1.21
*  adopt complete zh_CN/LC_MESSAGES(Thank [edustack](http://edustack.org/) for contributing it)

## Version 1.13
*  enable django-extensions

## Version 1.12
*  mv jquery from google cdn to bootcss cdn

##Version 1.11
*  Version 1.1x  is to improve the development experience


## Version 1.05
*  Optional responsive theme using Bootstrap 
  *  login to the container via SSH。then execute `/theme/use_ionisx_theme.sh` 。that's ok!


## Version 1.04
*  enable email (Thank @OVER for contributing Email account )
*  Thank @netwalk0r for uploading edx_cypress_docker_1.04.tar.gz to QQ Group(Our QQ Group:106781163)

## Version 1.03
*  language_zh_CN
*  TIME_ZONG:zh_CH

## Version 1.02
*  enable ssh (user:root ; password:edx)

## Version 1.01
*  fix the bug of starting forum

### Pull it
*  [install docker](https://docs.docker.com/installation/)
*  sudo docker pull wwj718/edx_cypress_docker:1.22

## Run it
*  sudo docker run -itd -P wwj718/edx_cypress_docker:1.22

## Get the info of running container
*  sudo docker ps
