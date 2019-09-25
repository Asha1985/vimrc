call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter' 
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"----------------------------------------------
set encoding=utf-8

set number
set relativenumber

set tabstop=2
set expandtab

set hlsearch
set incsearch

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

syntax on
colorscheme gruvbox
set background=dark

set wildmode=longest,list

"russian---------------------------------------
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
:setlocal spell spelllang=ru_yo,en_us

"----------------------------------------------
map <C-n> : NERDTreeToggle<Cr>

"html and css----------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
