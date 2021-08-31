#!/bin/bash
#
#
#   Script by RahulHackz - https://github.com/RahulHackz
#   Contact me:- hi.rahulhackz@gmail.com
#   © RahulHackz 2021
#
#
if [ "$EUID" -ne 0 ]
  then echo "️Please run this script like this 👉 sudo bash auto-vnc-pi.sh 👈"
  exit
fi && apt-get update && apt-get install x11vnc -y && echo -e "vncserver -geometry 1920x1080" >> /etc/startup-vnc.sh && chmod +x /etc/startup-vnc.sh && echo -e "/etc/startup-vnc.sh" >> /etc/rc.local && echo " " && echo "####################" && echo "IP address for VNC (probably):" && ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' && echo "####################" && echo " "
echo "####################" && echo "Port for VNC (probably):" && echo "5901" && echo "####################" && echo " " && echo "------------------------------" && echo "Hey! My work is done. When you turn on your linux machine, VNC server will automatically starts up ✅" && echo " " && echo "That's it! Bye!!" && echo " " && echo "RahulHackz signing off..." && echo "------------------------------" && echo " "
