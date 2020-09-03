" {{{ Colors 
" A nice color scheme
colorscheme elflord
" Syntax coloring 
syntax on
" Put a vertical gray bar at 80 columns
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" }}}

" Spaces and tabs {{{

" Default shift is 4 characters
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Tabs suck
set expandtab

" }}}

" UI Configuration {{{

" Work with different file types appropriately
filetype indent plugin on

" Line numbers
set number

" Autocomplete filenames with <TAB>
set wildmenu

" Show the last command entered
set showcmd

" Highlight matching braces and such
set showmatch

" Automatically indent the next line (if the current line is indented)
set autoindent

" Ruler should be at the bottom
set ruler

" Redraw only when necessary
set lazyredraw

" Vim should be silent, and turn off the visual bell
set visualbell
set t_vb=

" Allow the mouse and trackpad to work in scrolling and clicking inside and
" between buffers
set mouse=a

" Always show a status line
set laststatus=2

" Confirm, e.g., when exiting with unsaved buffers
set confirm

" Leave two lines at the bottom for commands, not just one
set cmdheight=2

" switch splitting from vertical to horizontal to -
noremap <c-w>- <c-w>t<c-w>K

" switch splitting from horizontal to vertical to |
noremap <c-w>\| <c-w>t<c-w>H

" }}}

" Custom Leader {{{

" Set comma to leader
let mapleader=","

" jk is escape
inoremap jk <esc>

" }}}

" Search {{{

" ',' turns off search highlighting until the next search
nnoremap <leader><space> :nohl<CR>

" Search incrementally, and highlight search terms
set incsearch
set hlsearch

" Ignore casing when the search string is entirely in lowercase
set ignorecase
set smartcase

" }}}

" Movement {{{

" Try to preserve cursor position when jumping around file
set nostartofline

" }}}

" Editing {{{

" Allow backspace over autoindent, line breaks, and the start of an insert
set backspace=indent,eol,start

" Enable working with hidden buffers (:help hidden)
" You can hide a buffer with (Ctrl-W c)
set hidden

" Make Y yank to the end of the line instead of the whole line
" (yy does that)
map Y y$

" Truncate to 80 characters as you type
set tw=80

" Fold and unfold using triple brackets
set foldmethod=marker
set foldmarker={{{,}}}

" Open files with folds open
set foldlevel=1
" }}}

" NERDTree {{{
" Key binding
nmap <C-f> :NERDTreeToggle<CR>
" }}}
" Miscellaneous {{{

" Explicitly use vim with all its improvements to vi
set nocompatible

" }}}

