#!/bin/sh -l

name="$1"
time=$(date)

echo ::set-output name=time::$time

echo "dumping context"

echo GITHUB_ACTION_REPOSITORY $GITHUB_ACTION_REPOSITORY

echo GITHUB_ACTION_REF $GITHUB_ACTION_REF

if echo $name | grep -i "^homer" > /dev/null ; then
  echo "No Homers allowed!"
  # Exit with a failure
  exit 1
else
  echo "Hello $name"
fi

