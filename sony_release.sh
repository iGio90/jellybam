#!/bin/bash

echo ""
echo ""
echo "to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/amazon/ ]; then
        printf "founded amazon device tree... cleaning \n"
        printf "\n"
        rm -r device/amazon/
else
        printf "amazon device tree not founded \n"
fi
if [ -d device/htc/ ]; then
	printf "founded htc device tree... cleaning \n"
        printf "\n"
	rm -r device/htc/
else
	printf "htc device tree not founded \n"
fi
if [ -d device/asus/ ]; then
	printf "founded asus device tree... cleaning \n"
        printf "\n"
	rm -r device/asus/
else
	printf "asus device tree not founded \n"
fi
if [ -d device/samsung/ ]; then
	printf "founded samsung device tree... cleaning \n"
        printf "\n"
	rm -r device/samsung/
else
	printf "lge device tree not founded \n"
fi
if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n"
        printf "\n"
	rm -r device/lge
else
	printf "lge device tree not founded \n"
fi
sleep 5
echo ""
echo ""
echo "to avoid uploading multiple version, is better if we clean every jellybam zip."
rm -f out/target/product/*/jellybam*.zip

echo ""
echo ""
echo "let's begin!"
sleep 5

echo ""
echo ""
echo "Woaaaaah it's mint time!"
sleep 5
	repo sync -j15 && sh bam-build.sh mint
		scp out/target/product/mint/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/mint/
		scp out/target/product/mint/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's tsubasa time!"
sleep 5
	repo sync -j15 && sh bam-build.sh tsubasa
		scp out/target/product/tsubasa/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tsubasa/
		scp out/target/product/tsubasa/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's yuga time!"
sleep 5
        repo sync -j15 && sh bam-build.sh yuga
                scp out/target/product/yuga/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/yuga/
                scp out/target/product/yuga/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/
