#!/bin/bash

# root check
FILE="/tmp/out.$$"
GREP="/bin/grep"

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

read -p "This script will install Amadeus theme for lightdm-gtk-greeter , is that okay ? y/n : " uConfirm
echo ""
if [ "$uConfirm" != "y" ]; then
    echo -e "Exit installer!\n"
    exit 0
fi

yes | cp -rf Amadeus /usr/share/themes
echo "Done!"
exit 0