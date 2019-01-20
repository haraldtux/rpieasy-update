#! /bin/sh
#
#
#  ^H> HucDuino 20-01-2019
#
#  RPiEasy update script (ver. 1.0.8 Beta)
#
## https://github.com/haraldtux/rpieasy-update
#
## RPiEasy :
## https://github.com/enesbcs/rpieasy
# 
# !! use of this script is at your own risk !!, HucDuino takes no responsibility for use of this script !
#

echo " "
echo "RPiEasy update Beta"
echo "start script rpieasy-update.sh"
echo " "

#rm -r rpieasy-update
mkdir -m 777 rpieasy-update

cp -r rpieasy/data rpieasy-update
cp -r rpieasy/files rpieasy-update
cp -r rpieasy/img rpieasy-update

cd rpieasy-update
git clone https://github.com/enesbcs/rpieasy.git

sleep 2s
pkill -f ./RPIEasy.py
echo "Exit RPiEasy"

cd -
rm -r rpieasy

cp -r rpieasy-update/rpieasy  rpieasy
cp -r rpieasy-update/data rpieasy
cp -r rpieasy-update/files rpieasy
cp -r rpieasy-update/img rpieasy

#chmod -R 777 rpieasy
#chmod -R 755 rpieasy
cd rpieasy
rm -r .git

cd -
rm -r rpieasy-update

sleep 2s
cd rpieasy
rm nohup.out
nohup ./RPIEasy.py &
cd /
echo " "
echo "RPiEasy update complete en started"

sleep 2s
echo " "
echo "^H> HucDuino"
echo " "

sleep 3s
clear
