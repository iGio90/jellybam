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
if [ -d device/lge/ ]; then
	printf "founded lge device tree... cleaning \n"
        printf "\n"
	rm -r device/lge/
else
	printf "lge device tree not founded \n"
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

echo "Woaaaaah it's crespo time!"
sleep 5
	repo sync -j15 && sh bam-build.sh crespo
		scp out/target/product/crespo/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/crespo/
		scp out/target/product/crespo/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's crespo4g time!"
sleep 5
	repo sync -j15 && sh bam-build.sh crespo4g
		scp out/target/product/crespo4g/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/crespo4g/
		scp out/target/product/crespo4g/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's d2att time!"
sleep 5
	repo sync -j15 && sh bam-build.sh d2att
		scp out/target/product/d2att/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/d2att/
		scp out/target/product/d2att/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's d2spr time!"
sleep 5
	repo sync -j15 && sh bam-build.sh d2spr
		scp out/target/product/d2spr/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/d2spr/
		scp out/target/product/d2spr/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's d2tmo time!"
sleep 5
	repo sync -j15 && sh bam-build.sh d2tmo
		scp out/target/product/d2tmo/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/d2tmo/
		scp out/target/product/d2tmo/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's d2usc time!"
sleep 5
	repo sync -j15 && sh bam-build.sh d2usc
		scp out/target/product/d2usc/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/d2usc/
		scp out/target/product/d2usc/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's d2vzw time!"
sleep 5
	repo sync -j15 && sh bam-build.sh d2vzw
		scp out/target/product/d2vzw/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/d2vzw/
 		scp out/target/product/d2vzw/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's epicmtd time!"
sleep 5
        repo sync -j15 && sh bam-build.sh epicmtd
                scp out/target/product/epicmtd/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/epicmtd/
                scp out/target/product/epicmtd/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's fascinatemtd time!"
sleep 5
        repo sync -j15 && sh bam-build.sh fascinatemtd
                scp out/target/product/fascinatemtd/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/fascinatemtd/
                scp out/target/product/fascinatemtd/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's galaxysmtd time!"
sleep 5
        repo sync -j15 && sh bam-build.sh galaxysmtd
                scp out/target/product/galaxysmtd/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/galaxysmtd/
                scp out/target/product/galaxysmtd/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's hercules time!"
sleep 5
        repo sync -j15 && sh bam-build.sh hercules
                scp out/target/product/hercules/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/hercules/
                scp out/target/product/hercules/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i605 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i605
                scp out/target/product/i605/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i605/
                scp out/target/product/i605/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i777 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i777
                scp out/target/product/i777/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i777/
                scp out/target/product/i777/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i9100 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i9100
                scp out/target/product/i9100/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i9100/
                scp out/target/product/i9100/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i9100g time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i9100g
                scp out/target/product/i9100g/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i9100g/
                scp out/target/product/i9100g/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i9103 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i9103
                scp out/target/product/i9103/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i9103/
                scp out/target/product/i9103/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i9300 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i9300
                scp out/target/product/i9300/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i9300/
                scp out/target/product/i9300/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's i9305 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh i9305
                scp out/target/product/i9305/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/i9305/
                scp out/target/product/i9305/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's maguro time!"
sleep 5
        repo sync -j15 && sh bam-build.sh maguro
                scp out/target/product/maguro/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/maguro/
                scp out/target/product/maguro/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's mesmerizemtd time!"
sleep 5
        repo sync -j15 && sh bam-build.sh mesmerizemtd
                scp out/target/product/mesmerizemtd/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/mesmerizemtd/
                scp out/target/product/mesmerizemtd/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's n7000 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh n7000
                scp out/target/product/n7000/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/n7000/
                scp out/target/product/n7000/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's n7100 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh n7100
                scp out/target/product/n7100/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/n7100/
                scp out/target/product/n7100/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's n8000 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh n8000
                scp out/target/product/n8000/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/n8000/
                scp out/target/product/n8000/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p3100 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh p3100
                scp out/target/product/p3100/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p3100/
                scp out/target/product/p3100/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p3110 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh p3110
                scp out/target/product/p3110/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p3110/
                scp out/target/product/p3110/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p4 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh p4
                scp out/target/product/p4/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p4/
                scp out/target/product/p4/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p4wifi time!"
sleep 5
        repo sync -j15 && sh bam-build.sh p4wifi
                scp out/target/product/p4wifi/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p4wifi/
                scp out/target/product/p4wifi/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p5100 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh p5100
                scp out/target/product/p5100/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p5100/
                scp out/target/product/p5100/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's p5110 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh p5110
                scp out/target/product/p5110/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/p5110/
                scp out/target/product/p5110/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's quincyatt time!"
sleep 5
        repo sync -j15 && sh bam-build.sh quincyatt
                scp out/target/product/quincyatt/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/quincyatt/
                scp out/target/product/quincyatt/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's r950 time!"
sleep 5
        repo sync -j15 && sh bam-build.sh r950
                scp out/target/product/r950/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/r950/
                scp out/target/product/r950/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's skyrocket time!"
sleep 5
        repo sync -j15 && sh bam-build.sh skyrocket
                scp out/target/product/skyrocket/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/skyrocket/
                scp out/target/product/skyrocket/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's t0lte time!"
sleep 5
        repo sync -j15 && sh bam-build.sh t0lte
                scp out/target/product/t0lte/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/t0lte/
                scp out/target/product/t0lte/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's t0lteatt time!"
sleep 5
        repo sync -j15 && sh bam-build.sh t0lteatt
                scp out/target/product/t0lteatt/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/t0lteatt/
                scp out/target/product/t0lteatt/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's t0ltetmo time!"
sleep 5
        repo sync -j15 && sh bam-build.sh t0ltetmo
                scp out/target/product/t0ltetmo/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/t0ltetmo/
                scp out/target/product/t0ltetmo/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/

echo "Woaaaaah it's vibrantmtd time!"
sleep 5
        repo sync -j15 && sh bam-build.sh vibrantmtd
                scp out/target/product/vibrantmtd/jellybam*.zip JellyBam@upload.goo.im:/home/JellyBam/vibrantmtd/
                scp out/target/product/vibrantmtd/jellybam*.zip root@94.23.250.163:/home/Jellybam/upload/
