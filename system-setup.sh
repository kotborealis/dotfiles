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

echo "Install oh my zsh"

if [ -d ~/.oh-my-zsh ]; then echo "oh-my-zsh installed!"; else \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; fi

echo "Set Terminator as default terminal"
gsettings set org.gnome.desktop.default-applications.terminal exec terminator

echo "Set ZSH as default shell"
chsh -s $(which zsh)

echo "Install dev tools"
sudo apt install build-essential g++ automake htop -y

echo "Install vim"
sudo apt install vim -y

echo "Install wine"
sudo apt install wine-stable -y

echo "Install shit"
sudo apt install \
  octave \
  wine \
  keepass2 -y

echo "Install rofi"
sudo apt install rofi -y

echo "Install Java"
sudo apt install openjdk-8-jre openjdk-8-jdk -y

echo "Codecs"
sudo apt install ubuntu-restricted-extras -y

echo "Install Chrome"
sudo apt install libxss1 libappindicator1 libindicator7 -y
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
sudo apt install -f -y
rm google-chrome*.deb # free up space

echo "Install virtualbox"
# 1. downloading package
wget http://download.virtualbox.org/virtualbox/5.1.6/VirtualBox-5.1.6-110634-Linux_amd64.run
# 2. installing package into /opt
sudo sh VirtualBox-5.1.6-110634-Linux_amd64.run
# 3. downloading extension pack
wget http://download.virtualbox.org/virtualbox/5.1.6/Oracle_VM_VirtualBox_Extension_Pack-5.1.6-110634.vbox-extpack
# 4. install extension pack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.6-110634.vbox-extpack
# 5. listing installed extension packs
sudo VBoxManage list extpacks

echo "Install TLP"
sudo apt-get install tlp tlp-rdw -y
sudo tlp start

echo "Install Docker"
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER

echo "Install Node"
wget https://nodejs.org/dist/v11.0.0/node-v11.0.0-linux-x64.tar.xz
sudo tar --strip-components=1 -xvf node-v11.0.0-linux-x64.tar.xz -C /usr
rm node-v11.0.0-linux-x64.tar.xz

echo "Clean up"
sudo apt autoremove
