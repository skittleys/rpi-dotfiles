set nocompatible

set number				" Show line numbers
set backspace=indent,eol,start		" make bksp work right

set incsearch				" "find-as-you-type"
set ignorecase				" case-insensitive; must be set for smartcase to work
set smartcase				" if all lowercase, ignores case; if any uppercase, respects it
set hlsearch

set linebreak 				" Wrap lines
set showbreak=" ↪" 

filetype plugin indent on
set smartindent
set smarttab
set autoindent
set copyindent				" uses the indentation of the above line
set shiftwidth=4			" Number of auto-indent spaces
set softtabstop=4			" Number of spaces per TAB

syntax on
colorscheme elflord
