" Source this file from ~/.vimrc

filetype plugin indent on
syntax on
set number

" Default indentation
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on

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
