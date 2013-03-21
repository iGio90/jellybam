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
	echo "lge device tree not founded"
fi
if [ -d device/lge/ ]; then
	echo "founded lge device tree... cleaning"
	rm -r device/lge"
else
	echo "lge device tree not founded"
fi
sleep 5

echo "let's begin!"
sleep5

echo "Woaaaaah it's mint time!"
sleep 5
	sh bam-build.sh mint
		scp out/target/product/mint/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/mint/
		scp out/target/product/mint/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
		ssh firecontrol.in touch /home/Jellybam/upload/start.txt

echo "Woaaaaah it's tsubasa time!"
sleep 5
	sh bam-build.sh tsubasa
		scp out/target/product/tsubasa/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tsubasa/
		scp out/target/product/tsubasa/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
		ssh firecontrol.in touch /home/Jellybam/upload/start.txt
