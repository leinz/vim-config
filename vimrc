" Source this file from ~/.vimrc

" Pathogen loading
" filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
set number
set autoread

" Default indentation
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on

" Command-T overrides
nnoremap <silent> <Leader>g :CommandTBuffer<CR>"

" Treeview with netrw
let g:netrw_liststyle=3 " Use tree-mode as default view
let g:netrw_browse_split=4 " Open file in previous buffer
let g:netrw_preview=1 " preview window shown in a vertically split
let g:netrw_winsize=20 " Better readability

set wildignore+=*.pyc

" Default python folding
let g:pymode_folding = 1

" Pylint ignores long lines
let g:pymode_lint_ignore = "E501"

colorscheme desert

" Custom commands
command Smal 35winc <
command Brei 35winc >
