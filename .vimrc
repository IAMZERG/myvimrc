set nocompatible  "No need for vi compatibility
set nu  "syntax highlighting on

set cursorline "line for cursor

set wildmenu  "autocomplete menus

set wildmode=list:longest "make wildmode behave like BASH completion

set autoindent  "get rid of the crud when opening vim

set shortmess=a

set cmdheight=2
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
set backspace=indent,eol,start  " make that backspace key work the way it should

syntax on
filetype on
filetype indent on

set t_RV=
