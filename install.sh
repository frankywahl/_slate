#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";
export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

# Rails 
if which Rails >/dev/null; then
  rm -rf ~/.slate
  ln -s ${PATH_TO_FILE}/slate ~/.slate
else
  echo "${RED}Attention: ${DEFAULT} Slate not found"
fi 
