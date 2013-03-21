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
if [ -d device/sony/ ]; then
	printf "founded sony device tree... cleaning \n"
	rm -r device/sony/
else
	printf "sony device tree not founded \n"
fi
if [ -d device/samsung/ ]; then
	printf "founded samsung device tree... cleaning \n"
	rm -r device/samsung/
else
	printf "lge device tree not founded \n"
fi
if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n"
	rm -r device/lge"
else
	printf "lge device tree not founded \n"
fi
sleep 5

echo "let's begin!"
sleep5

echo "Woaaaaah it's grouper time!"
sleep 5
	sh bam-build.sh grouper
		scp out/target/product/grouper/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/grouper/
		scp out/target/product/grouper/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's tilapia time!"
sleep 5
	sh bam-build.sh tilapia
		scp out/target/product/tilapia/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tilapia/
		scp out/target/product/tilapia/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
