#!/bin/bash

# arith-loop: script to demonstrate arithmetic operators

finished=0
a=0
printf "a\ta**2\ta**3\ta**4\n"
printf "=\t===\t===\t=====\n"

until ((finished)); do
  b=$((a**2))
  c=$((a**3))
  d=$((a**4))
  printf "%d\t%d\t%d\t%d\n" $a $b $c $d
  ((a<10?++a:(finished=1)))
done
