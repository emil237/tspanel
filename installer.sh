#!/bin/sh
# 
# check python version 
version=8.1
# Download and install plugin #

cd /tmp 
rm -rf TSpanel-"$version".tar.gz
set -e

wget  "https://raw.githubusercontent.com/emil237/plugins/main/TSpanel-8.1.tar.gz"
set +e
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/TSpanel
set -e
tar -xzf TSpanel-8.1.tar.gz -C /
wait
rm -f TSpanel-8.1.tar.gz
set +e
cd ..
echo "#########################################################"
echo "#          TSpanel INSTALLED SUCCESSFULLY               #"
echo "##############################################################################"             
echo "   UPLOADED BY  >>>>   EMIL_NABIL "   
sleep 4;
		echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0











