#!/usr/bin/env bash
TEMPFILE=/tmp/minecrafttempfile.tmp
DOWNLOAD_URL="https://minecraft.net/en-us/download/server"
LOC=/opt/minecraft
AWS_LAUNCHER=https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar

# assets
GIT_HOME="https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master"
MC_PNG="$GIT_HOME/minecraft.png"
MC_DESKTOP="$GIT_HOME/Minecraft.desktop"
MC_EXE="$GIT_HOME/minecraft"
MC_SERVER="$GIT_HOME/minecraft_server"

# logging
Red='\033[37;41m'
Purple='\033[0;35m'
NC='\033[0m' # No Color

PURPLE_ECHO() {
    echo -e "${Purple}$1${NC}"
}
RED_ECHO() {
    echo -e "${Red}$1${NC}"
}

if [ $1 != "update" ]; then
    PURPLE_ECHO "Grabbing minecraft download page..."
    curl -s $DOWNLOAD_URL > $TEMPFILE
    SERVER_URL=`egrep -io 'https.*server.jar' $TEMPFILE`
fi

if [ $1 = "install" ]; then
    PURPLE_ECHO "Installing Minecraft"
    sudo mkdir $LOC

    PURPLE_ECHO "Downloading server jar..."
    sudo wget -q -O $LOC/minecraft_server.jar $SERVER_URL

    PURPLE_ECHO "Downloading client jar..."
    sudo wget -q -O $LOC/Minecraft.jar $AWS_LAUNCHER

    PURPLE_ECHO "Downloading Minecraft.png..."
    sudo wget -q -O $LOC/minecraft.png $MC_PNG

    PURPLE_ECHO "Downloading desktop file..."
    sudo wget -q -O /usr/share/applications/Minecraft.desktop $MC_DESKTOP

    PURPLE_ECHO "Downloading run scripts..."
    sudo wget -q -O /usr/bin/minecraft $MC_EXE
    sudo wget -q -O /usr/bin/minecraft_server $MC_SERVER
    sudo chmod +x /usr/bin/minecraft_server
    sudo chmod +x /usr/bin/minecraft
    PURPLE_ECHO "Done"

elif [ $1 = "uninstall" ]; then
    PURPLE_ECHO "Uninstalling Minecraft..."
    sudo rm -rf $LOC
    sudo rm -f /usr/share/applications/Minecraft.desktop
    sudo rm -f /usr/bin/minecraft_server
    sudo rm -f /usr/bin/minecraft
    PURPLE_ECHO "Done"

elif [ $1 = "update" ]; then
    if [ -e "$LOC" ]; then
        sudo rm -f $LOC/*.jar
        PURPLE_ECHO "Downloading server jar..."
        sudo wget -q -O $LOC/minecraft_server.jar $SERVER_URL

        PURPLE_ECHO "Downloading client jar..."
        sudo wget -q -O $LOC/Minecraft.jar $AWS_LAUNCHER
    else
        RED_ECHO "Can't update minecraft if it's not installed"
    fi
fi
