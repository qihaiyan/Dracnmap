#!/usr/bin/env bash

#============================================================================================================
#                               Dracnmap
#
#                       Welcome and dont disclaimer
#                     Dracnmap Author By Edo -maland-
#                 Tested On Kali Linux and Dracos
#       contact me in screetsec@gmail.com or screetsec@dracos-linux.org
#          OS Penetration From Indonesia : https://dracos-linux.org/
#============================================================================================================


#This colour
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'


#Variable
Version='1.0'
Codename='Komodoku'

#Bebeku
if [[ $EUID -ne 0 ]]; then
	echo "ERROR! Run this script with root user!"
	exit 1
fi

resize -s 50 84 > /dev/null

###############################################
# Checking gaannss
###############################################
clear
echo -e $cyan ""
echo "             .-.____________________.-. "
echo "      ___ _.' .-----.    _____________|======+----------------+ "
echo "     /_._/   (      |   /_____________|      |      OOO       | "
echo "       /      '  _ ____/                     |  BOOOMM !!!!!! | "
echo "      |_      .\( \\                          |________________| "
echo "     .'  @-._/____// "
echo "   .'       |=== "
echo "   /        / "
echo "  /        | "
echo "  |        ' "
echo "  |         \ "
echo "   -._____./ "
echo ""
echo ""
echo -e $lightgreen'-- -- +=[(c) 2016-2017 | dracos-linux.org | Linuxsec.org | Pentester Indonesia '
echo -e $cyan'-- -- +=[ Author: Screetsec < Edo Maland >  ]=+ -- -- '
echo -e " "

if [ $(id -u) != "0" ]; then

      echo [!]::[Check Dependencies] ;
      sleep 2
      echo [✔]::[Check User]: $USER ;
      sleep 1
      echo [x]::[not root]: you need to be [root] to run this script.;
      echo ""
   	  sleep 1
	  exit


else

   echo [!]::[Check Dependencies]: ;
   sleep 1
   echo [✔]::[Check User]: $USER ;

fi

  ping -c 1 google.com > /dev/null 2>&1
  if [ "$?" != 0 ]

then

    echo [✔]::[Internet Connection]: DONE!;
    echo [x]::[warning]: This Script Needs An Active Internet Connection;
    sleep 2

else

    echo [✔]::[Internet Connection]: connected!;
    sleep 2
fi

# check apache if exists
      which nmap > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo [✔]::[ Nmap ]: installation found!;
else

   echo [x]::[warning]:this script require Nmap ;
   echo ""
   echo [!]::[please wait]: please install .... ;
   apt-get update
   apt-get install nmap
   echo ""
   sleep 2
   exit
fi
sleep 2

./msh.sh

