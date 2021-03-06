start

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
call plug#end()

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
set noswapfile

let base16colorspace=256  " Access colors present in 256 colorspace

colorscheme base16-tomorrow-night

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
