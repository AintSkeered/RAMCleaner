#!/bin/bash

RED="\033[1;31m"
ENDCOLOR="\033[0m"
GREEN='\033[1;32m'
YELLOW="\033[1;33m"
CYAN='\033[1;36m'
if [ $USER != root ]; then
  echo $RED"Error: must be root"
  echo $YELLOW"Exiting..."$ENDCOLOR
  exit 0
fi
echo $RED"RAM"$GREEN"Cleaner"$YELLOW" Version 1.0"
echo $YELLOW"___________________________________________________________________________"$ENDCOLOR
sync;
echo $RED"Before:"
free -m
echo 3 > /proc/sys/vm/drop_caches
echo $YELLOW"___________________________________________________________________________"$ENDCOLOR
echo $GREEN"After:"
free -m
echo $YELLOW"___________________________________________________________________________"$ENDCOLOR
echo $CYAN"Your RAM has been cleaned up and now your computer should be faster!"
# Copyright RAMCleaner 2014. Please do not change code if you redistribute!
