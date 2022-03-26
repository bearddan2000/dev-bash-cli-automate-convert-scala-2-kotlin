#! /bin/bash

for d in `ls -la | grep ^d | awk '{print $NF}' | egrep -v '^\.'`; do

  rm -f $d/install.sh

  cp .src/install.sh $d

  if [[ -e $d/Dockerfile ]]; then
    #statements
    rm -f $d/Dockerfile
  fi

  ./readme.sh $d

  ./build.sh $d

  ./folder.sh $d

done
