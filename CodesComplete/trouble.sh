#!/bin/sh -x

# trouble: script to demonstrate common errors
set -x
number=1

if [ $number = 1 ]; then
  echo "Number is equal to 1."
else
  echo "Number is not equal to 1."
fi
set +x
