" Essential {{{

" Set as early as possible to avoid unexpected side effects
set nocompatible

" Buffers can exist on the background, don’t have to save when
" switching them.
set hidden

" Do not create backup or swap files
set noswapfile
set nobackup
set nowb

set autoread                   " reload while changed outside Vim
set autowrite                  " write changes on switch to another file

" Enable unicode. Use cyrillic as fallback.
set encoding=utf8
set termencoding=utf8
set fileencodings=utf8,cp1251

set history=50                 " any reason to keep long history?

set ttyfast                    " fast terminal connection
set timeout timeoutlen=500     " map sequence timeout
set ttimeout ttimeoutlen=100   " key code timeout

" Disable interactive shell. Interactive shell may cause unexpected problems
" by running external programs in Vim (https://github.com/tpope/vim-fugitive/issues/387)
set shellcmdflag=-c

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Set custom leader keys. The leader keys has to be set before plugins has
" been loaded.
let mapleader=','
let maplocalleader='\'

" }}}
