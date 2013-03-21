echo "first of all, let's sync the repoes"
sleep 5
repo sync

echo "great, now... to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/htc/ ]; then
	echo "founded htc device tree... cleaning"
	rm -r device/htc/
else
	echo "htc device tree not founded"
fi
if [ -d device/asus/ ]; then
	echo "founded asus device tree... cleaning"
	rm -r device/asus/
else
	echo "asus device tree not founded"
fi
if [ -d device/samsung/ ]; then
	echo "founded samsung device tree... cleaning"
	rm -r device/samsung/
else
	echo "samsung device tree not founded"
fi
if [ -d device/sony/ ]; then
	echo "founded sony device tree... cleaning"
	rm -r device/sony"
else
	echo "sony device tree not founded"
fi
sleep 5

echo "to avoid uploading multiple version, is better if we clean every jellybam zip."
sleep 5
read -p "Should i remove every jellybam zip? (y/n) " RESP
if [ "$RESP" = "y" ]; then
        echo "Ok! cleaning all jellybam zip, please.. be patient"
        rm out/target/product/*/jellybam-*
else
  echo "Neverming, i'll leave them all"
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
