" Essential {{{

" Ensure the compatible mode is disabled
if &compatible
  set nocompatible
endif

" Filetype off is required by Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" }}}
" Plugins in use {{{

" Let Vundle manage itself
Plugin 'gmarik/vundle'

" }}}

filetype on
