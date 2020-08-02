#!/usr/bin/with-contenv bash

cd $gitfolder

#for each folder in $gitfolder do
for image in * ; do

  cd $gitfolder/$image || exit

  date >> $gitfolder/$image/weeklybuild.txt
  git commit -a -m "Update image"

  git push origin master
  #origin/master
done

