#!/bin/bash

# while-menu: a menu driven system information program.

DELAY=1.5

while [[ $REPLY != 0 ]]; do
  clear
  echo "
  Please select:

  1. Display System Information
  2. Display Disk Space
  3. Display Home Space Utilization
  0. Quit
  "
  read -p "Enter selection [0-3] > "

  if [[ $REPLY =~ ^[0-3]$ ]]; then
    if [[ $REPLY == 1 ]]; then
      echo "Hostname: $HOSTNAME"
      uptime
      sleep $DELAY
    fi
    if [[ $REPLY == 2 ]]; then
      df -h
      sleep $DELAY
    fi

    if [[ $REPLY == 3 ]]; then
      if [[ $(id -u) -eq 0 ]]; then
        echo "Home Space Utilization (ALL Users)"
        du -sh /home/*
      else
        echo "Home Space Utilization ($USER)"
        du -sh $HOME
      fi
      sleep $DELAY
    fi
  else
    echo "Invalid entry." >&2
    sleep $DELAY
  fi
done

echo "Program terminated."
