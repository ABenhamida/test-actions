#!/bin/sh
echo ruby -v
if [ "$DEBUG" == "false" ]
then
  # Carry on, but do quit on errors
  set -e
else
  # Verbose debugging
  set -exuo pipefail
  export LOG_LEVEL=debug
  export ACTIONS_STEP_DEBUG=true
fi


if [ ! -z "$WD_PATH" ]
then
  echo "Changing dir to $WD_PATH"
  cd $WD_PATH
fi

echo "Installing NPM dependencies"
npm install

if [ -f "Gruntfile.js" ]
then
  npm install -g grunt-cli
  echo "Running Grunt with args"
  sh -c "grunt $*"
else
  echo "Running NPM with args"
  sh -c "npm $*"
fi
