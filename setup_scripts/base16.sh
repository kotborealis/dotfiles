#! /usr/bin/env bash

# shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
pip3 install base16-shell-preview

# rofi
git clone https://github.com/0xdec/base16-rofi.git ~/.config/rofi/base16-themes/
mv ~/.config/rofi/base16-themes/themes ~/.config/rofi/themes/
rm -rf ~/.config/rofi/base16-themes/
rofi -theme base16-default-dark
