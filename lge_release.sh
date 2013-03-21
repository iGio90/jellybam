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
	printf "samsung device tree not founded \n"
fi
if [ -d device/sony/ ]; then
	printf "founded sony device tree... cleaning \n"
	rm -r device/sony"
else
	printf "sony device tree not founded \n"
fi
sleep 5

echo "let's begin!"
sleep5

echo "Woaaaaah it's mako time!"
sleep 5
	sh bam-build.sh mako
		scp out/target/product/mako/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/mako/
		scp out/target/product/mako/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's p920 time!"
sleep 5
	sh bam-build.sh p920
		scp out/target/product/p920/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p920/
		scp out/target/product/p920/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's p930 time!"
sleep 5
	sh bam-build.sh p930
		scp out/target/product/p930/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p930/
		scp out/target/product/p930/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's p970 time!"
sleep 5
	sh bam-build.sh p970
		scp out/target/product/p970/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p970/
		scp out/target/product/p970/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's p990 time!"
sleep 5
	sh bam-build.sh p990
		scp out/target/product/p990/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p990/
		scp out/target/product/p990/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
