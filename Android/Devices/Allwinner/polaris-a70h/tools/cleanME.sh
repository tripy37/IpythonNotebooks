#!/bin/bash

for dir in boot recovery
do
if [[ -n $(find tablet/$dir/ -type f -not -name 'README.md') ]]
then
  echo "We shall delet all files in " $dir
  find tablet/$dir/ -type f -not -name 'README.md' | xargs rm
  find tablet/$dir/ -type l -not -name 'README.md' | xargs rm
else
  echo $dir " directory is empty"
fi
done
