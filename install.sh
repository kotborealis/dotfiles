stow bash
stow git
stow zsh
stow vim
stow terminator
stow xserver
stow neofetch
stow sublime
stow bin
stow tmux
stow octave
stow zathura
stow rofi

mkdir -p ~/.config/autostart/
ln -s ./autostart/.config/autostart/switch-layout.desktop ~/.config/autostart/switch-layout.desktop
ln -s ./autostart/.config/autostart/Telegram.desktop ~/.config/autostart/Telegram.desktop

./setup_scripts/plug.vim.sh
./setup_scripts/base16.sh
