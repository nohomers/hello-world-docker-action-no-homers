#!/bin/sh -l

name="$1"
time=$(date)

echo ::set-output name=time::$time
echo ::set-output name=homers-allowed::0


if echo $name | grep -i "^homer" > /dev/null ; then
  echo "No Homers allowed!"
  # Exit with a failure
  exit 1
else
  echo "Hello $name"
fi

