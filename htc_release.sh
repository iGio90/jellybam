echo "first of all, let's sync the repoes"
sleep 5
repo sync

echo "great, now... to avoid device tree conflict it's better if we remove other manufacturer device tree"
sleep 5

if [ -d device/lge/ ]; then
	echo "founded lge device tree... cleaning"
	rm -r device/lge/
else
	echo "lge device tree not founded"
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
