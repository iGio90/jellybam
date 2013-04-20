#!/bin/bash

echo ""
echo ""
echo "to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/motorola/ ]; then
        printf "founded motorola device tree... cleaning \n"
        printf "\n"
        rm -r device/motorola
else
        printf "motorola device tree not founded \n"
fi
if [ -d device/amazon/ ]; then
        printf "founded amazon device tree... cleaning \n"
        printf "\n"
        rm -r device/amazon/
else
        printf "amazon device tree not founded \n"
fi
if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n"
	printf "\n"
	rm -r device/lge/
else
	printf "lge device tree not founded \n"
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
	printf "samsung device tree not founded \n"
fi
if [ -d device/sony/ ]; then
	printf "founded sony device tree... cleaning \n"
        printf "\n"
	rm -r device/sony
else
	printf "sony device tree not founded \n"
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

echo "Woaaaaah it's doubleshot time!"
sleep 5
        sh bam-build.sh true  doubleshot
                scp out/target/product/doubleshot/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/doubleshot/
                scp out/target/product/doubleshot/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's evita time!"
sleep 5
	sh bam-build.sh true  evita
		scp out/target/product/evita/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/evita/
		scp out/target/product/evita/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's endeavoru time!"
sleep 5
	sh bam-build.sh true  endeavoru
		scp out/target/product/endeavoru/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/endeavoru/
		scp out/target/product/endeavoru/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's jewel time!"
sleep 5
	sh bam-build.sh true  jewel
		scp out/target/product/jewel/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/jewel/
		scp out/target/product/jewel/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's ville time!"
sleep 5
        sh bam-build.sh true  ville
                scp out/target/product/ville/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/ville/
                scp out/target/product/ville/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

