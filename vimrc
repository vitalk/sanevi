" Essential {{{

" Set as early as possible to avoid unexpected side effects
set nocompatible

" Buffers can exist on the background, don't have to save when switching them
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

" Set custom leader keys. The mapleader has to be set before Vundle starts
" loading plugins.
let mapleader=','
let maplocalleader='\'

" Persistent undo {{{
"
" At least Vim 7.3+ required. This allow to use undo after exiting and
" restarting Vim (http://vimbits.com/bits/242).

if exists('+undofile')
  if !isdirectory(expand('~/.vim/undo'))
    silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/undo//    " where is to save undo files
  set undofile                 " keep history between Vim sessions
endif

" }}}
" Plugins {{{

if filereadable(expand('~/.vim/plugged.vim'))
  source ~/.vim/plugged.vim
endif

" }}}

" }}}
" UI {{{

set lazyredraw                 " don't redraw while executing macros
set nonumber                   " no line numbering
set showcmd                    " display incomplete commands

if &t_Co > 2 || has('gui_running')
  syntax on                    " switch syntax highlighting on
  syntax sync fromstart        " syntax synchronization from file start
  set synmaxcol=600            " skip highlighting long lines
endif

if has('gui_running')
  set go=mgR                   " leave menu bar and right scroll
endif

" Mouse support {{{

if has('mouse')
  " In many terminal emulators the mouse works just enable it
  set mouse=a

  if exists('$TMUX')
    set ttymouse=xterm2        " allow buffer resizing in tmux
  endif
endif

" }}}

" }}}
" Visual cues {{{

" Cursor line will always be in the middle of the window
set scrolloff=1000

set ruler                      " show the cursor position all the time
set laststatus=2               " always show status line
set visualbell                 " shut up
set noerrorbells               " SHUT UP!

" Display unprintable characters like tabs and trailing spaces. Use fallback
" characters if terminal doesn't support unicode and unicode characters
" otherwise.
set list
if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
  set listchars=tab:¬·,trail:·,nbsp:×
  set fillchars=diff:⋅,fold:⋅
  set showbreak=…\ 
else
  set listchars=tab:\ \ ,trail:~,nbsp:+
  set fillchars=diff:-,fold:-
endif

if version >= 703
  set colorcolumn=+1           " mark the ideal max text width
endif

" }}}
" Text formatting {{{

set textwidth=78     " wrap at 78 chars by default
set shiftwidth=4     " number of spaces used for (auto)indent
set softtabstop=4    " number of spaces to process during editing operations
set tabstop=4        " number of spaces that a <Tab> in the file counts for
set autoindent       " indents line relative to the line above it
set smartindent      " do smart autoindenting when starting a new line in C-like
                     " programs
set smarttab         " use the 'shiftwidth' while inserting <Tab>
set smartcase        " sometimes override ignorecase option
set expandtab        " expand tabs to spaces

" Format options: how automatic formatting is to be done {{{

set formatoptions+=t " auto-wrap text using textwidth
set formatoptions+=c " auto-wrap comments using textwidth
set formatoptions+=r " auto insert current comment leader after <Enter> in Insert
set formatoptions-=o " auto insert current comment leader after <o/O> in Normal
set formatoptions+=q " allow formatting of comments with "gq"
set formatoptions-=w " trail white space indicates paragraph continues next line
set formatoptions-=a " auto reformat of paragraphs when inserted or deleted
set formatoptions+=n " when formatting, recognize numbered lists
set formatoptions-=m " also break at a multi-byte character above 255
set formatoptions+=2 " when formatting, use second line's indent

" }}}

" }}}
" Search {{{

set hlsearch         " highlight search matches
set incsearch        " show search matches as you type
set ignorecase       " search is case insensitive when search term is all
                     " lowercase...
set smartcase        " ...otherwise search uppercase

" Use The Silver Searcher (https://github.com/ggreer/the_silver_searcher)
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

" }}}
" Spell {{{

set nospell                   " no spelling by default
set spelllang=ru_yo,en_us     " spell check for English and Russian
set spellsuggest=7            " limit maximum number of the spell suggestions

" }}}
" System copy/paste {{{

set clipboard=unnamed         " use clipboard register for all yank, delete and
                              " change operations
if has('unnamedplus')
  set clipboard+=unnamedplus  " better support system clipboard
endif

" }}}
" Completion {{{

set wildmenu                   " enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=full              " make cmdline tab completion similar to bash
set wildchar=<tab>             " tab completion key

" Stuff to ignore when tab completing
set wildignore+=*~
set wildignore+=.git,.hg,.svn
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.so
set wildignore+=*.sw?
set wildignore+=*.py[co]
set wildignore+=*.DS_Store
set wildignore+=*.png,*.jpg,*.gif

" }}}
" Folding {{{

set foldmethod=indent          " fold based on indent
set foldnestmax=3              " deepest fold is 3 levels
set nofoldenable               " don't fold by default

" }}}
" Key bindings {{{

if filereadable(expand('~/.vim/keybindings.vim'))
  source ~/.vim/keybindings.vim
endif

" }}}
" Custom commands {{{

if has('autocmd')
  if filereadable(expand('~/.vim/autocmd.vim'))
    source ~/.vim/autocmd.vim
  endif
endif

" }}}
" Local config overwrite global one {{{

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" }}}
