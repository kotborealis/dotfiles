hash zsh && echo "Skipping apt install" || \
    sudo apt install git zsh vim terminator tmux octave

if [ -d ~/.oh-my-zsh ]; then echo "oh-my-zsh installed!"; else \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; fi

echo "Stow!"
stow bash
stow git
stow zsh
stow vim
stow terminator
stow xresources
stow neofetch
stow sublime
stow xinitrc
stow bin
stow tmux
stow octave

echo "terminator!"
gsettings set org.gnome.desktop.default-applications.terminal exec terminator
