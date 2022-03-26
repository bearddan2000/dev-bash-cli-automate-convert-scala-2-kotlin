#! /bin/bash
DOCKER_IMAGE="maven:3-openjdk-17"

function replace_readme_str() {
  #statements
  local file=$1/README.md
  local old=$2
  local new=$3

  perl -pi.bak -e "s/${old}/${new}/" $file
  rm -f $1/README.md.bak
}


function rm_sbt() {
  #statements
  replace_readme_str $1 "hseeberger\/scala-maven:11\.0\.2-oraclelinux7_1\.3\.5_2\.12\.10" $DOCKER_IMAGE
  replace_readme_str $1 "openjdk:8-jdk-alpine" $DOCKER_IMAGE
  replace_readme_str $1 "sbt" "maven"
}

d=$1

rm_sbt $d

replace_readme_str $d "sbt" "maven"
