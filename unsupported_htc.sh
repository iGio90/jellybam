#!/bin/bash

echo "first of all, let's sync the repoes"
sleep 5
repo sync 12

echo ""
echo ""
echo "great, now... to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n\n"
	rm -r device/lge/
else
	printf "lge device tree not founded \n\n"
fi
if [ -d device/asus/ ]; then
	printf "founded asus device tree... cleaning \n\n"
	rm -r device/asus/
else
	printf "asus device tree not founded \n\n"
fi
if [ -d device/samsung/ ]; then
	printf "founded samsung device tree... cleaning \n\n"
	rm -r device/samsung/
else
	printf "samsung device tree not founded \n\n"
fi
if [ -d device/sony/ ]; then
	printf "founded sony device tree... cleaning \n\n"
	rm -r device/sony
else
	printf "sony device tree not founded \n\n"
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

echo "Woaaaaah it's pyramid time!"
sleep 5
        sh bam-build.sh pyramid
                scp out/target/product/pyramid/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/pyramid/
                scp out/target/product/pyramid/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's shooter time!"
sleep 5
        sh bam-build.sh shooter
                scp out/target/product/shooter/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/shooter/
                scp out/target/product/shooter/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's shooteru time!"
sleep 5
        sh bam-build.sh shooteru
                scp out/target/product/shooteru/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/shooteru/
                scp out/target/product/shooteru/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's shootervm time!"
sleep 5
        sh bam-build.sh shootervm
                scp out/target/product/shootervm/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/shootervm/
                scp out/target/product/shootervm/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

