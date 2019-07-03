call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'

call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"----------------------------------------------
set encoding=utf-8

set number
set tabstop=2
set expandtab

set hlsearch
set incsearch

syntax on
colorscheme gruvbox
set background=dark

"----------------------------------------------

map <C-n> : NERDTreeToggle<Cr>
