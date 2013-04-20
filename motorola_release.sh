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
if [ -d device/asus/ ]; then
        printf "founded asus device tree... cleaning \n"
        printf "\n"
        rm -r device/asus/
else
        printf "asus device tree not founded \n"
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

echo "Woaaaaah it's everest time!"
sleep 5
        sh bam-build.sh true  everest
                scp out/target/product/everest/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/everest/
                scp out/target/product/everest/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's maserati time!"
sleep 5
	sh bam-build.sh true  maserati
		scp out/target/product/maserati/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/maserati/
		scp out/target/product/maserati/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's solana time!"
sleep 5
        sh bam-build.sh true  solana
                scp out/target/product/solana/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/solana/
                scp out/target/product/solana/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's spyder time!"
sleep 5
	sh bam-build.sh true  spyder
		scp out/target/product/spyder/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/spyder/
		scp out/target/product/spyder/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's targa time!"
sleep 5
        sh bam-build.sh true  targa
                scp out/target/product/targa/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/targa/
                scp out/target/product/targa/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's umts_spyder time!"
sleep 5
        sh bam-build.sh true  umts_spyder
                scp out/target/product/umts_spyder/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/umts_spyder/
                scp out/target/product/umts_spyder/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's wingray time!"
sleep 5
        sh bam-build.sh true  wingray
                scp out/target/product/wingray/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/wingray/
                scp out/target/product/wingray/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/
