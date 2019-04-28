#!/bin/bash

# until-count: display a series of number

count=1

until [[ $count > 5 ]]; do
  echo $count
  count=$((count + 1))
done
echo "Finished."
