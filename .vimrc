
""""""""""""""""""""""
" Initialize Pathogen"
""""""""""""""""""""""
execute pathogen#infect()

set nocompatible  "No need for vi compatibility
set nu  "syntax highlighting on

set cursorline "line for cursor

"set wildmenu  "autocomplete menus  commented out for testing

set wildmode=list:longest "make wildmode behave like BASH completion
"set path+=** "allow deep searching for find command

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

set cinoptions+=J1      " fix indentation for JSON and Javascript


syntax on
filetype on
filetype indent on


set t_RV=

let mapleader=" " "setting the <leader> character to space


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""  Custom Mappings """""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax highlighting for *.hbs (Ember)
au BufRead *.hbs set syntax=html
au BufNewFile *.hbs set syntax=html

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

" open vim using "vim" and then use "<leader>lo" to go directly to my last open session
nnoremap <leader>ms :mksession!<cr>
nnoremap <leader>lo :call LastOpen()<cr>
nnoremap <leader>po :call ProjectOpen()<cr>

augroup onend
	au VimLeave * mks! ~/.vim/lastopen.vim
augroup END

function LastOpen()
	source ~/.vim/lastopen.vim
endfunction

function ProjectOpen()
  source ./Session.vim
endfunction
