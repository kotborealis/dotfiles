start

set shiftwidth=4
set softtabstop=4
set expandtab

filetype indent plugin on
syntax on

set hidden
set wildmenu
set showcmd
set hlsearch
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
call plug#end()
