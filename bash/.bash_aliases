tarme() {
    tar cf "$1.tar.gz" "$1"
}

untar() {
    for filename in $@; do
        tar xf $filename
    done
}

zipme() {
    zip -r "$1.zip" "$1"
}

zipmeencrypted() {
    zip -er "$1.zip" "$1"
}

function tableflip(){
    echo "(╯°□°）╯︵ ┻━┻"
}

alias cl='clear';

alias ..='cd ../';
alias ...='cd ../../'
alias ~='cd ~';

alias mkdir='mkdir -pv';

alias rm='rm -I --preserve-root'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
