#!/bin/bash

tmpfile=/tmp/minecrafttempfile.tmp
downloadurl="https://minecraft.net/en-us/download/server"
serverurl=`egrep -io 'https.*game\/(.*)\/server.jar' $tmpfile`
loc=/opt/minecraft

sudo mkdir $loc

echo "Grabbing minecraft download page..."
curl -s $downloadurl > $tmpfile

echo "Downloading server jar..."
sudo wget -q -O $loc/minecraft_server.jar $serverurl 

echo "Downloading client jar..."
sudo wget -q -O $loc/Minecraft.jar https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar

echo "Downloading Minecraft.png"
sudo wget -q -O minecraft.png https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraft.png

echo "Downloading desktop file"
sudo wget -q -O /usr/share/applications/Minecraft.desktop https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/Minecraft.desktop

echo "Downloading executables"
sudo wget -q -O /usr/bin/minecraft https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraft
sudo wget -q -O /usr/bin/minecraft_server https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraft_server 
sudo chmod +x /bin/minecraft_server
sudo chmod +x /bin/minecraft
