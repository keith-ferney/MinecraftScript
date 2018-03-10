sudo mkdir /opt/minecraft/
cd /opt/minecraft/
sudo wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
sudo wget https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar
sudo wget -O minecraft_server https://www.dropbox.com/s/h5pcqhjklt77id0/minecraft_server?dl=0
sudo wget -O minecraft https://www.dropbox.com/s/figdaktu3vd67yu/minecraft?dl=0
sudo wget -O minecraft.png https://www.dropbox.com/s/cq0hycm5v4z8vp4/minecraft.png?dl=0
cd /usr/share/applications/
sudo wget -O Minecraft.desktop https://www.dropbox.com/s/pacgt5ugcxpshug/Minecraft.desktop?dl=0
cd /bin/
sudo wget -O minecraft_server https://www.dropbox.com/s/h5pcqhjklt77id0/minecraft_server?dl=0
sudo wget -O minecraft https://www.dropbox.com/s/figdaktu3vd67yu/minecraft?dl=0
sudo chmod +x minecraft_server
sudo chmod +x minecraft
