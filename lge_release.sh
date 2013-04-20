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
rm -f out/target/product/*/jellam*.zip

echo ""
echo ""
echo "let's begin!"
sleep 5

echo "Woaaaaah it's mako time!"
sleep 5
	sh bam-build.sh mako true
		scp out/target/product/mako/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/mako/
		scp out/target/product/mako/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p760 time!"
sleep 5
        sh bam-build.sh p760 true
                scp out/target/product/p760/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p760/
                scp out/target/product/p760/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p920 time!"
sleep 5
	sh bam-build.sh p920 true
		scp out/target/product/p920/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p920/
		scp out/target/product/p920/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p930 time!"
sleep 5
	sh bam-build.sh p930 true
		scp out/target/product/p930/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p930/
		scp out/target/product/p930/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p970 time!"
sleep 5
	sh bam-build.sh p970 true
		scp out/target/product/p970/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p970/
		scp out/target/product/p970/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p990 time!"
sleep 5
	sh bam-build.sh p990 true
		scp out/target/product/p990/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p990/
		scp out/target/product/p990/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's su640 time!"
sleep 5
        sh bam-build.sh su640 true
                scp out/target/product/su640/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/su640/
                scp out/target/product/su640/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/
