#!/bin/ksh

safeRunCommand() {
  typeset cmnd="$*"
  typeset ret_code

  echo cmnd=$cmnd
  eval $cmnd
  ret_code=$?
  if [ $ret_code != 0 ]; then
    #printf "Error : [%d] when executing command: '$cmnd'" $ret_code
    printf "Error: gulp-cli is not installed. Install via 'npm install --global gulp-cli'"
    exit $ret_code
  fi
}

# command="ls -l | grep p"
# command="gulp -v"
command="./node_modules/.bin/gulp -v"
safeRunCommand "$command"


echo building...
gulp buildAllWithoutReload