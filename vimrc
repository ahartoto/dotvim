" Filename: vimrc

" This must be first, because it changes other options
set nocompatible

"==============================================================================
" Editing behavior
"==============================================================================

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin on
filetype indent on

set termencoding=utf-8
set encoding=utf-8

" misc
set nowrap
set ww=<,>
set backspace=indent,eol,start

set tabstop=4
set expandtab

set number " Precede each line with its line number
if has("gui_running")
    set cursorline " Highlight the screen line of the cursor
endif
set ruler       " Show the line and column number of the cursor position, separated by a comma
set showmatch   " When a bracket is inserted, briefly jump to the matching one
set scrolloff=4 " Minimal number of screen lines to keep above and below the cursor

" indenting
set autoindent   " Copy indent from current line when starting a new line.
set copyindent   " Copy the strucure of the existing lines indent when autoindenting a new line.
set shiftwidth=4 " Number of spaces to use for each step of (auto)indent.
set shiftround   " Round indent to multiple of 'shiftwidth'.
set smarttab     " A <Tab> in front of a line inserts blanks according to 'shiftwidth'.

" search
set hlsearch   " When there is a previous search pattern, highlight all its matches.
set incsearch  " While typing a search command, show where the pattern, as it was typed so far, matches.
set ignorecase " Ignore case in a search command.
set smartcase  " Ignore case if search pattern is all lowercase.

" invisible characters
if has("gui_running")
    set list
    set listchars=tab:»·,trail:·
endif

"==============================================================================
"= Vim behavior
"==============================================================================

set nobackup   " Do not make a backup before overwriting a file.
set noswapfile " Do not use a swapfile for the buffer.
set backupcopy=yes

"==============================================================================
"= Highlighting
"==============================================================================

if &t_Co >= 256 || has("gui_running")
    colorscheme desert
    "set guifont=Consolas:h16:cANSI
endif

if &t_Co > 2 || has("gui_running")
    syntax on
endif

"==============================================================================
"= Filetype specific
"==============================================================================

if has("autocmd")
    autocmd filetype make set noexpandtab
    autocmd filetype python set expandtab
endif " has ("autocmd")

"==============================================================================
"= GUI Settings
"==============================================================================

map <MiddleMouse> <Nop>
map <F5> :NERDTree<cr>
