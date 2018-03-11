# MinecraftScript
A script I made that installs minecraft and minecraft server globaly on linux systems
## dependencies  

  curl  
  default-jdk  
  default-jre  

  on ubuntu you can run  
```sudo apt-get install curl default-jdk default-jre```

## to use install script run  
```curl -s https://raw.githubusercontent.com/keith-ferney/MinecraftScript/master/minecraftInstaller.sh | bash```  
you might have to logout and login to reload the applications menu

## how to use once installed
to run minecraft simply look for it in your applications and it will be there  
or via the terminal run  
``` minecraft ```

how to use the minecraft_server command  
make a new directory for your server and go into it in a terminal run
```mkdir YourDirectoryName```
```cd YourDirectoryName ```
then in a terminal run   
```minecraft_server```

I have only tested on ubuntu but it should work on most linux distros that can normaly run minecraft
