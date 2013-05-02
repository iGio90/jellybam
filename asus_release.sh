#!/bin/bash

echo ""
echo ""
echo "to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

echo ""
echo ""
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

echo "Woaaaaah it's grouper time!"
sleep 5
	sh bam-build.sh grouper true
		scp out/target/product/grouper/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/grouper/
		scp out/target/product/grouper/jellybam*.zip root@5.9.120.101:/home/Jellybam/upload/

echo "Woaaaaah it's tf300t time!"
sleep 5
        sh bam-build.sh tf300t true
                scp out/target/product/tf300t/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tf300t/
                scp out/target/product/tf300t/jellybam*.zip root@5.9.120.101:/home/Jellybam/upload/

echo "Woaaaaah it's tf700t time!"
sleep 5
        sh bam-build.sh tf700t true
                scp out/target/product/tf700t/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tf700t/
                scp out/target/product/tf700t/jellybam*.zip root@5.9.120.101:/home/Jellybam/upload/

echo "Woaaaaah it's tilapia time!"
sleep 5
	sh bam-build.sh tilapia true
		scp out/target/product/tilapia/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tilapia/
		scp out/target/product/tilapia/jellybam*.zip root@5.9.120.101:/home/Jellybam/upload/
