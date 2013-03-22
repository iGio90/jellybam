#!/bin/bash

echo "first of all, let's sync the repoes"
sleep 5
repo sync -j12

echo "great, now... to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/htc/ ]; then
	printf "founded htc device tree... cleaning \n"
	rm -r device/htc/
else
	printf "htc device tree not founded \n"
fi
if [ -d device/asus/ ]; then
	printf "founded asus device tree... cleaning \n"
	rm -r device/asus/
else
	printf "asus device tree not founded \n"
fi
if [ -d device/samsung/ ]; then
	printf "founded samsung device tree... cleaning \n"
	rm -r device/samsung/
else
	printf "lge device tree not founded \n"
fi
if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n"
	rm -r device/lge
else
	printf "lge device tree not founded \n"
fi
sleep 5

echo "to avoid uploading multiple version, is better if we clean every jellybam zip."
sleep 5
read -p "Should i remove every jellybam zip? (y/n) " RESP
if [ "$RESP" = "y" ]; then
        echo "Ok! cleaning all jellybam zip, please.. be patient"
        rm out/target/product/*/jellybam-*
else
  echo "Neverming, i'll leave them all"
fi
sleep 5

echo "let's begin!"
sleep 5

echo "Woaaaaah it's mint time!"
sleep 5
	sh bam-build.sh mint
		scp out/target/product/mint/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/mint/
		scp out/target/product/mint/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's tsubasa time!"
sleep 5
	sh bam-build.sh tsubasa
		scp out/target/product/tsubasa/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tsubasa/
		scp out/target/product/tsubasa/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
