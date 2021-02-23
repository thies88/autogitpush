#!/usr/bin/with-contenv bash

cd $gitfolder

#for each folder in $gitfolder do
for image in * ; do

  cd $gitfolder/$image || exit

  # update repo
  git pull
  #add tekst to txt
  date >> $gitfolder/$image/weeklybuild.txt
  # commit changes
  git commit -a -m "Update image"
  
  #push commit to github
  git push origin master
  #origin/master
done

