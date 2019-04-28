#!/bin/bash

# test-file: Evaluate the status of a file
echo "$@"
FILE="$1"
if [ -e "$FILE" ]; then
  if [ -f "$FILE" ]; then
    echo "$FILE is a regular file."
  fi

  if [ -d "$FILE" ]; then
    echo "$FILE is a directory."
  fi

  if [ -r "$FILE" ]; then
    echo "$FILE is readable."
  fi

  if [ -w "$FILE" ]; then
    echo "$FILE is writable."
  fi

  if [ -x "$FILE" ]; then
    echo "$FILE is executable/searchable."
  fi

else
  echo "$FILE does not exist"
  echo  "Please send a file as first argument"
  exit 1
fi

exit

