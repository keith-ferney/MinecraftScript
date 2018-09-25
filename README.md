# MinecraftScript
A script I made that installs Minecraft and Minecraft server globally on Linux systems.
## dependencies

  curl  
  java (for Minecraft)  

  To install the dependencies on ubuntu you can run  
  `sudo apt-get install curl openjdk-8-jre`

## to install minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s install`  

You might have to logout and login to reload the applications menu.

## to update minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s update`  

## to uninstall minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s uninstall`  

## how to use once installed
To run Minecraft, look for it in your applications and it will be there, or via the terminal run  

`minecraft`

To start your minecraft server run this command in your server directory (`/usr/bin/`)  

`minecraft_server`

I have only tested on ubuntu but it should work on most linux distros that can normally run Minecraft.
