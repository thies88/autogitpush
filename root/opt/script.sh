#!/usr/bin/with-contenv bash

#vars
#gitfolder="/opt/git"
#gitrepo="docker-baseimage-alpine"
#giturl="https://github.com/thies88/docker-baseimage-alpine"

cd $gitfolder/$gitrepo || exit

#echo "Last build is from:" + 
date >> $gitfolder/$gitrepo/weeklybuild.txt
git commit -a -m "Update image"

git push origin master
#origin/master


