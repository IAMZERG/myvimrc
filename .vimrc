
""""""""""""""""""""""
" Initialize Pathogen"
""""""""""""""""""""""
execute pathogen#infect()

set nocompatible  "No need for vi compatibility
set nu  "syntax highlighting on

set cursorline "line for cursor

set wildmenu  "autocomplete menus

set wildmode=list:longest "make wildmode behave like BASH completion

set autoindent
set smartindent

set shortmess=a

set cmdheight=2
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
set backspace=indent,eol,start  " make that backspace key work the way it should
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab


syntax on
filetype on
filetype indent on

au BufRead, BufNewFile *.hbs set syntax=html

set t_RV=

let mapleader=" " "setting the <leader> character


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""  Custom Mappings """""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""

"sourcing the vimrc
nnoremap <leader>sv :source $MYVIMRC<cr> 
" editing the vimrc
nnoremap <leader>ev :vs $MYVIMRC<cr>  
" operator pending mapping for parenthesis
onoremap <leader>i( :<c-u>normal! f(vi)<cr> 
" operator pending mapping for the same
onoremap <leader>i) :<c-u>normal! F)vi(<cr> 
onoremap <leader>i( :<c-u>normal! f(vi)<cr> 
" operator pending mapping for the same
onoremap <leader>i) :<c-u>normal! F)vi(<cr> 

nnoremap <leader>ms :mksession<cr>

augroup onend
	au VimLeave * mks! ~/.vim/lastopen.vim
augroup END

