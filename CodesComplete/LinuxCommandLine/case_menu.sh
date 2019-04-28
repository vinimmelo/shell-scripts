#!/bin/bash

# while-menu: a menu driven system information program.

DELAY=3

while true; do
  clear
  echo "
  Please select:

  1. Display System Information
  2. Display Disk Space
  3. Display Home Space Utilization
  0. Quit
  "
  read -p "Enter selection [0-3] > "

  case $REPLY in
    0)  echo "Program terminated."
        exit 1
        ;;
    1)  echo "Hostname: $HOSTNAME"
        uptime
        sleep $DELAY
        ;;
    2)  df -h
        sleep $DELAY
        ;;
    3)  if [[ $(id -u) -eq 0 ]]; then
          echo "Home Space Utilization (All Users)"
          du -sh /home/*
        else
          echo "Home Space Utilization ($USER)"
          du -sh $HOME
        fi
        sleep $DELAY
        ;;
    *)  echo "Invalid entry" >&2
        sleep $DELAY
        ;;
  esac
done

echo "Program terminated."
