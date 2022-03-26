#! /bin/bash

cp .src/install.sh $1/install.sh

cp .src/pom.xml $1/bin/pom.xml

find $d -name "project" -exec rm -Rf {} \;

find $d -name "build.sbt" -exec rm -f {} \;
