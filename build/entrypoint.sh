#!/bin/sh
export REVIEWDOG_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"

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


echo "Installing NPM dependencies"
npm install

if [ -f "Gruntfile.js" ]
then
  npm install -g grunt-cli
  echo "Running Grunt with args"
  #sh -c "grunt $*"
  #scss_lint
  scss-lint | reviewdog -efm="%f:%l:%c %m" -name="grunt-custom" -reporter="${INPUT_REPORTER}" -level="${INPUT_LEVEL}"
else
  echo "Running NPM with args"
  sh -c "npm $*"
fi
