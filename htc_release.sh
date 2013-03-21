#!/bin/bash

echo "first of all, let's sync the repoes"
sleep 5
repo sync 12

echo "great, now... to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n"
	rm -r device/lge/
else
	printf "lge device tree not founded \n"
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
	rm -r device/sony
else
	printf "sony device tree not founded \n"
fi
sleep 5

echo "let's begin!"
sleep5

echo "Woaaaaah it's evita time!"
sleep 5
	sh bam-build.sh evita
		scp out/target/product/evita/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/evita/
		scp out/target/product/evita/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's endeavoru time!"
sleep 5
	sh bam-build.sh endeavoru
		scp out/target/product/endeavoru/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/endeavoru/
		scp out/target/product/endeavoru/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's evita time!"
sleep 5
	sh bam-build.sh evita
		scp out/target/product/evita/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/evita/
		scp out/target/product/evita/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's jewel time!"
sleep 5
	sh bam-build.sh jewel
		scp out/target/product/jewel/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/jewel/
		scp out/target/product/jewel/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
