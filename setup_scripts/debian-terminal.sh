#!/usr/bin/env bash

# wget https://raw.githubusercontent.com/kotborealis/dotfiles/master/setup_scripts/debian-terminal.sh
# chmod +x debian-terminal.sh
# sudo ./debian-terminal.sh

echo "Update apt repos & dist-upgrade"
sudo apt update && sudo apt-get dist-upgrade -y

echo "Install git"
sudo apt install git -y

echo "Install stow"
sudo apt install stow -y

echo "Install wget & curl"
sudo apt install wget curl -y

echo "Install file compression libs"
sudo apt install rar unrar zip unzip p7zip-full p7zip-rar -y

echo "Install Terminal, Shell & such"
sudo apt install zsh terminator tmux -y

echo "Install dev tools"
sudo apt install build-essential g++ automake htop -y

echo "Install vim"
sudo apt install vim -y

echo "Install wine"
sudo apt install wine-stable -y

echo "Install octave"
sudo apt install octave -y

echo "Install keepass2"
sudo apt install keepass2 -y

echo "Install rofi"
sudo apt install rofi -y

echo "Install Java"
sudo apt install openjdk-8-jre openjdk-8-jdk -y

echo "Install Python & Pip"
sudo apt install python3 python3-pip

export NODE_V="11.0.0"
echo "Install Node $NODE_V"
sudo wget https://nodejs.org/dist/v$NODE_V/node-v$NODE_V-linux-x64.tar.xz
sudo tar --strip-components=1 -xvf node-v$NODE_V-linux-x64.tar.xz -C /usr
sudo rm node-v$NODE_V-linux-x64.tar.xz

echo "Install oh my zsh"
if [ -d ~/.oh-my-zsh ]; then echo "oh-my-zsh installed!"; else \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; fi

echo "Set ZSH as default shell"
chsh -s $(which zsh)

echo "Clean up"
sudo apt autoremove
sudo rm -- "$0"
