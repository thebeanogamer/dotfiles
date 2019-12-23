set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

" Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'

" ===================
" end of plugins
" ===================
let g:airline_powerline_fonts = 1
call vundle#end()               " required
filetype plugin indent on       " required
set number
set mouse=a
