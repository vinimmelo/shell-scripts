#!/bin/bash

# while-count: display a series of number

count=1

while [ $count -le 5 ]; do
  echo $count
  count=$((count + 1))
done
echo "Finished."
