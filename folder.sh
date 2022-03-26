#! /bin/bash

d=$1

new_folder=`head -n 1 $d/README.md | sed 's/# //g'`

new_folder=`echo ${new_folder} | sed 's/sbt/maven/g'`

mv $d $new_folder
