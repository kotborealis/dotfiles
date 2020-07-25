#!/usr/bin/env bash

# wget https://raw.githubusercontent.com/kotborealis/dotfiles/master/setup_scripts/elementary-os.sh
# chmod +x elementary-os.sh
# sudo ./elementary-os.sh

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

echo "Install zathura"
sudo apt install zathura -y

echo "Install Java"
sudo apt install openjdk-8-jre openjdk-8-jdk -y

echo "Install Python & Pip"
sudo apt install python3 python3-pip -y

echo "Install Codecs"
sudo apt install ubuntu-restricted-extras -y

echo "Install Elementary tweaks"
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt update
sudo apt install elementary-tweaks -y

echo "Install Chrome"
sudo apt install libxss1 libappindicator1 libindicator7 -y
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y
sudo rm google-chrome*.deb

echo "Install TLP"
sudo apt-get install tlp tlp-rdw -y
sudo tlp start

echo "Install Docker"
sudo curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo rm get-docker.sh

export NODE_V="11.0.0"
echo "Install Node $NODE_V"
sudo wget https://nodejs.org/dist/v$NODE_V/node-v$NODE_V-linux-x64.tar.xz
sudo tar --strip-components=1 -xvf node-v$NODE_V-linux-x64.tar.xz -C /usr
sudo rm node-v$NODE_V-linux-x64.tar.xz

echo "Install oh my zsh"
if [ -d ~/.oh-my-zsh ]; then echo "oh-my-zsh installed!"; else \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; fi

echo "Set Terminator as default terminal"
sudo gsettings set org.gnome.desktop.default-applications.terminal exec terminator

echo "Set ZSH as default shell"
chsh -s $(which zsh)

echo "Clean up"
sudo apt autoremove
sudo rm -- "$0"

echo "Install dotfiles"
git clone https://github.com/kotborealis/dotfiles ~/dotfiles
bash ~/dotfiles/install.sh

echo "Setup autostart for switch-layout"
mkdir -p ~/.config/autostart/
ln -sf $(pwd)/autostart/.config/autostart/switch-layout.desktop ~/.config/autostart/switch-layout.desktop

echo "Edit lightdm"
sudo sh -c ' echo "pre-stop script
    pkill --oldest chrome
    pkill --oldest spotify
    sleep 2
end script" >> /etc/init/lightdm.conf'
