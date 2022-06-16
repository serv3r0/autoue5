
#!/bin/bash

usr=$(whoami)

echo " ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄▄ "
echo "▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌"
echo "▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀      ▐░█▀▀▀▀▀▀▀▀▀ "
echo "▐░▌       ▐░▌▐░▌               ▐░█▄▄▄▄▄▄▄▄▄ "
echo "▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░░░░░░░░░░░▌"
echo "▐░▌       ▐░▌▐░░░░░░░░░░░▌      ▀▀▀▀▀▀▀▀▀█░▌"
echo "▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀                ▐░▌"
echo "▐░▌       ▐░▌▐░▌                         ▐░▌"
echo "▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄█░▌"
echo "▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌"
echo " ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀▀▀ "


echo "UnrealEngine5 auto install script will run in 5 seconds , press CTRL+C to cancel"
sleep 1
echo "▄ ▄ ▄ ▄"
sleep 1
echo "▄ ▄ ▄"
sleep 1
echo "▄ ▄"
sleep 1
echo "▄"
sleep 1
echo "starting auto inst script"

echo "getting into user dowloads folder"
cd /home/$usr/Documents
echo "cloning repo"
git clone https://github.com/EpicGames/UnrealEngine.git
echo "getting into cloned folder"
cd /home/$usr/Documents/UnrealEngine
sleep 5
echo "running scripts"
sudo ./setup.sh
sleep 5
sudo ./GenerateProjectFiles.sh
echo "compiling"
sleep 5
sudo make
while true; do
    read -p "Do you wish to install unrealeditor from everywhere script? Yes or No" yn
    case $yn in
        [Yy]* ) mkdir /home/$usr/scripts
        cd /home/$usr/Downloads
        git clone https://github.com/serv3r0/autoue5.git
        mv /home/$usr/Downloads/autoue5/unrealeditor.sh /home/$usr/scripts
        echo "Add path to .bashrc at your home dir, export PATH="/home/$usr/scripts:$PATH""
        sleep 1
        echo "starting UnrealEngine"
echo "in future , to start UnrealEditor just go into /Engine/Binaries/Linux and run UnrealEditor"
sudo chmod 700 ../UnrealEngine-rekease
sudo chown $usr -R ../UnrealEngine-release
cd /home/$usr/Documents/UnrealEngine/Engine/Binaries/Linux
./UnrealEditor
        ; break;;
        [Nn]* )  echo "starting UnrealEngine"
echo "in future , to start UnrealEditor just go into /Engine/Binaries/Linux and run UnrealEditor"
sudo chmod 700 ../UnrealEngine-rekease
sudo chown $usr -R ../UnrealEngine-release
cd /home/$usr/Documents/UnrealEngine/Engine/Binaries/Linux
./UnrealEditor;;
        * ) echo "Please answer yes or no.";;
    esac
done
