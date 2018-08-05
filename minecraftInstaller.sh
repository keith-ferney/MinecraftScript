#!/bin/bash
tmpfile=/tmp/minecrafttempfile.tmp
downloadurl="https://minecraft.net/en-us/download/server"
loc=/opt/minecraft
Purple='\033[0;35m'
NC='\033[0m' # No Color

if [ $1 != "update" ]; then
  echo -e "${Purple}Grabbing minecraft download page...${NC}"
  curl -s $downloadurl > $tmpfile
  serverurl=`egrep -io 'https.*game\/(.*)\/server.jar' $tmpfile`
fi

if [ $1 = "install" ]; then
  echo -e "${Purple}Installing Minecraft${NC}"
  sudo mkdir $loc

  echo -e "${Purple}Downloading server jar...${NC}"
  sudo wget -q -O $loc/minecraft_server.jar $serverurl

  echo -e "${Purple}Downloading client jar...${NC}"
  sudo wget -q -O $loc/Minecraft.jar https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar

  echo -e "${Purple}Downloading Minecraft.png${NC}"
  sudo wget -q -O $loc/minecraft.png https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraft.png

  echo -e "${Purple}Downloading desktop file${NC}"
  sudo wget -q -O /usr/share/applications/Minecraft.desktop https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/Minecraft.desktop

  echo -e "${Purple}Downloading executables${NC}"
  sudo wget -q -O /usr/bin/minecraft https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraft
  sudo wget -q -O /usr/bin/minecraft_server https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraft_server
  sudo chmod +x /usr/bin/minecraft_server
  sudo chmod +x /usr/bin/minecraft
  echo -e "${Purple}Done${NC}"
elif [ $1 = "uninstall" ]; then
  echo -e "${Purple}Uninstalling Minecraft${NC}"
  sudo rm -rf $loc
  sudo rm -f /usr/share/applications/Minecraft.desktop
  sudo rm -f /usr/bin/minecraft_server
  sudo rm -f /usr/bin/minecraft
  echo -e "${Purple}Done${NC}"
elif [ $1 = "update" ]; then
  if [ -e "$loc" ]; then
    sudo rm -f $loc/*.jar
    echo -e "${Purple}Downloading server jar...${NC}"
    sudo wget -q -O $loc/minecraft_server.jar $serverurl

    echo -e "${Purple}Downloading client jar...${NC}"
    sudo wget -q -O $loc/Minecraft.jar https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
  else
    echo -e "${Purple}Can't update minecraft if it's not installed${NC}"
  fi
fi
