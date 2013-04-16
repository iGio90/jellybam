#!/bin/bash

echo ""
echo ""
echo "great, now... to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

echo ""
echo ""
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
if [ -d device/sony/ ]; then
	printf "founded sony device tree... cleaning \n"
        printf "\n"
	rm -r device/sony/
else
	printf "sony device tree not founded \n"
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
if [ -d device/motorola/ ]; then
        printf "founded motorola device tree... cleaning \n"
        printf "\n"
        rm -r device/motorola
else
        printf "motorola device tree not founded \n"
fi
sleep 5

echo ""
echo ""
echo "to avoid uploading multiple version, is better if we clean every jellybam zip."
rm -f out/target/product/*/jellybam*.zip
sleep 5

echo ""
echo ""
echo "let's begin!"
sleep 5

echo "Woaaaaah it's otter time!"
sleep 5
        repo sync -j15 && sh bam-build.sh otter
                scp out/target/product/otter/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/otter/
                scp out/target/product/otter/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's otter2 time!"
sleep 5
	repo sync -j15 && sh bam-build.sh otter2
		scp out/target/product/otter2/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/otter2/
		scp out/target/product/otter2/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/
