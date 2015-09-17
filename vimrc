" Source this file from ~/.vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'kien/CtrlP.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'ervandew/supertab'

" Language-specific plugins
Plugin 'fsharp/vim-fsharp'

call vundle#end()

filetype plugin indent on
syntax on
set number

" Default indentation
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Highlight search matches
set hlsearch

" Always show status bar
set laststatus=2

" Treeview with netrw
let g:netrw_liststyle=3 " Use tree-mode as default view
let g:netrw_browse_split=4 " Open file in previous buffer
let g:netrw_preview=1 " preview window shown in a vertically split
let g:netrw_winsize=20 " Better readability

set wildignore+=*.pyc
set wildignore+=*.o
set wildignore+=*.so

" Default python folding
let g:pymode_folding = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Pylint ignores long lines
" let g:pymode_lint_ignore = "E501"

" Custom keymaps
nnoremap . <NOP>
nmap .gc :Gcommit<CR>
nmap .gs :Gstatus<CR>
nmap .gb :Gblame<CR>
nmap .gg :Ggrep 

colorscheme desert

" Custom commands
command Smal 35winc <
command Brei 35winc >
