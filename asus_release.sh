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
if [ -d device/sony/ ]; then
	echo "founded sony device tree... cleaning"
	rm -r device/sony/
else
	echo "sony device tree not founded"
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

echo "Woaaaaah it's grouper time!"
sleep 5
	sh bam-build.sh grouper
		scp out/target/product/grouper/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/grouper/
		scp out/target/product/grouper/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/

echo "Woaaaaah it's tilapia time!"
sleep 5
	sh bam-build.sh tilapia
		scp out/target/product/tilapia/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/tilapia/
		scp out/target/product/tilapia/jellybam*.zip root@firecontrol.in:/home/Jellybam/upload/
