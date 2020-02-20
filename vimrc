" Load staff {{{

source ~/.vim/plugin/00_essential.vim
source ~/.vim/plugin/01_plugged.vim

source ~/.vim/plugin/10_options.vim
source ~/.vim/plugin/20_augroup.vim
source ~/.vim/plugin/21_file_types.vim
source ~/.vim/plugin/30_keybindings.vim
source ~/.vim/plugin/31_evil_mode.vim
source ~/.vim/plugin/32_markdown.vim
source ~/.vim/plugin/99_abbrev.vim
source ~/.vim/plugin/99_colours.vim

" Local config overwrite global one
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" }}}
