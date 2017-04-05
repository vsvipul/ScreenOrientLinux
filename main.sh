#!/bin/bash
# A simple script to help in screen rotation in linux

clear
use_same=""
use_auth=""
echo -e "
\e[1m\e[33mScreenRotateSet
=====================\e[0m
Tool to set up screen orientation settings on Linux.
 \e[4mThe following options are available : \e[0m
\e[1m 1. Normal \e[0m    : \e[2m Rotate Screen to normal view \e[0m
\e[1m 2. Inverted \e[0m  : \e[2m Rotate Screen to inverted view \e[0m
\e[1m 3. Left \e[0m      : \e[2m Rotate Screen to left \e[0m
\e[1m 4. Right \e[0m     : \e[2m Rotate Screen to right \e[0m
"

read -p " Enter your choice number : " choice
case "$choice" in
	1)
		echo "Rotating to normal"
		xrandr -o normal
		;;
	2)
		echo "Rotating to inverted"
		xrandr -o inverted
		;;
	3)
		echo "Rotating to left" 
		xrandr -o left
		;;
	4)
		echo "Rotating to right"
		xrandr -o right
		;;
	*)	;;
esac
echo
echo -e "\e[1m\e[36mDone!\e[0m \e[2mThanks for using :)\e[0m"