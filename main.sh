#!/bin/bash
# A simple script to help in screen rotation in linux

clear
use_same=""
use_auth=""
echo -e "
\e[1m\e[33mScreenOrientationSet
=====================\e[0m
Tool to set up screen orientation settings on Linux.
 \e[4mThe following options are available : \e[0m
\e[1m 1. Normal \e[0m    : \e[2m Rotate Screen to normal view \e[0m
\e[1m 2. Inverted \e[0m  : \e[2m Rotate Screen to inverted view \e[0m
\e[1m 3. Left \e[0m      : \e[2m Rotate Screen to left \e[0m
\e[1m 4. Right \e[0m     : \e[2m Rotate Screen to right \e[0m
"

read -p " Enter your choice number : " choice
if [ "$choice"="1" ]; then
	xrandr -o normal
fi
if [ "$choice"="2" ]; then
	xrandr -o inverted
fi
if [ "$choice"="3" ]; then
	xrandr -o left
fi
if [ "$choice"="4" ]; then
	xrandr -o right
fi
echo
echo -e "\e[1m\e[36mDone!\e[0m \e[2mThanks for using :)\e[0m"