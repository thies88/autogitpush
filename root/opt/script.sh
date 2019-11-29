#!/usr/bin/with-contenv bash

cd $gitfolder/$gitrepo || exit

date >> $gitfolder/$gitrepo/weeklybuild.txt
git commit -a -m "Update image"

git push origin master
#origin/master


