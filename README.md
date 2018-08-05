# MinecraftScript
A script I made that installs minecraft and minecraft server globaly on linux systems
## dependencies  

  curl  
  java (for minecraft)

  to install the dependencies on ubuntu you can run  
  `sudo apt-get install curl default-jdk default-jre`

## to install minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s install`  

you might have to logout and login to reload the applications menu

## to update minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s uninstall`  

## to uninstall minecraft run
`curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash -s uninstall`  

## how to use once installed
to run minecraft simply look for it in your applications and it will be there  
or via the terminal run  
`minecraft`

to start your minecraft server run this command in your server directory  
`minecraft_server`


I have only tested on ubuntu but it should work on most linux distros that can normaly run minecraft
