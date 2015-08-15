" Load staff {{{

source ~/.vim/plugin/00_essential.vim
source ~/.vim/plugin/01_plugged.vim

" Local config overwrite global one
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" }}}
