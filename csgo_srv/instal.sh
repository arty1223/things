# csgo server installer
#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install lib32z1 lib32stdc++6 lib32gcc1 lib32gcc-s1 screen zip unzip htop neofetch -y
sudo apt install vsftpd -y
chmod +x csgo/steam/update.sh
chmod +x csgo/csgo/*.sh
cp -r csgo ~/
cd ~/csgo/steam
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
# ./steamcmd.sh
./update.sh
echo "instalation of basic csgo server complited! Now You should edit csgosrv.service if necessary"