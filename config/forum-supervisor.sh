#!/bin/bash
#ForumSockFile="/edx/var/forum/forum.sock"
#if [ ! -f "$ForumSockFile" ]; then 
#	rm "$ForumSockFile"
#fi 
rm /edx/var/forum/forum.sock
source /edx/app/forum/forum_env
cd /edx/app/forum/cs_comments_service

/edx/app/forum/.gem/bin/unicorn -c config/unicorn.rb
