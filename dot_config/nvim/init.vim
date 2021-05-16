set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2


let g:ale_fix_on_save = 1
let b:ale_fixers = { 'ruby': [ 'rubocop' ],'puppet': [ 'puppetlint' ] }

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'PProvost/vim-ps1'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'luochen1990/rainbow'
Plug 'hashivim/vim-terraform'
Plug 'rodjek/vim-puppet'
Plug 'tibabit/vim-templates'
Plug 'dense-analysis/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_powerline_fonts = 1
autocmd BufNewFile,BufRead *.conf set syntax=ini
filetype plugin indent on       " required
set number
set mouse=a
set title
cnoreabbrev nt NERDTree
let g:rainbow_active = 1 
