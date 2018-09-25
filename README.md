# MinecraftScript
A script I made that installs minecraft and minecraft server globaly on linux systems
## dependencies

  curl
  java (for minecraft)

  to install the dependencies on ubuntu you can run
  `sudo apt-get install curl openjdk-8-jre`

## to install minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s install`

you might have to logout and login to reload the applications menu

## to update minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s update`

## to uninstall minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s uninstall`

## how to use once installed
To run minecraft, look for it in your applications and it will be there, or via the terminal run

`minecraft`

To start your minecraft server run this command in your server directory (by default, `/opt/`):

`minecraft_server`

I have only tested on ubuntu but it should work on most linux distros that can normally run Minecraft.
