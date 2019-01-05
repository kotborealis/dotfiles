#! /usr/bin/env bash

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

sudo pip3 install base16-shell-preview

git clone https://github.com/AuditeMarlow/base16-manager ~/.config/base16-manager
cd ~/.config/base16-manager && sudo make install
base16-manager install chriskempson/base16-shell
base16-manager install chriskempson/base16-vim
base16-manager install 0xdec/base16-rofi
base16-manager install nicodebo/base16-zathura
