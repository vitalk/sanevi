" Update split size on resize Vim {{{

au VimResized * wincmd =

" }}}
" Use skeleton template for new files {{{

augroup file_template
  au!
  au BufNewFile * silent! 0r ~/Templates/skeleton.%:e  " load skeleton
  au BufNewFile * normal! G"_ddgg                      " remove trailing blank line
augroup END

" }}}
" When editing a file, always jump to the last known cursor position {{{

augroup last_position
  au!
  au BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"zvzz" |
        \ endif
augroup END

" }}}
" Filetype specific {{{

" Plain text {{{

augroup ft_text
  au!
  au FileType text setlocal textwidth=78 formatoptions=tcrqn2
augroup END

" }}}
" Make {{{

augroup ft_make
  au!
  au FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
augroup END

" }}}
" Jinja {{{

augroup ft_jinja
  au!
  au FileType jinja setlocal ts=2 sts=2 sw=2
augroup END

" }}}
" CSS and LESS {{{

augroup ft_lesscss
  au!
  au BufNewFile,BufRead *.less setlocal filetype=less
  au FileType less,css setlocal foldmethod=marker foldmarker={,}
  au FileType less,css setlocal omnifunc=csscomplete#CompleteCSS
augroup END

" }}}
" YAML {{{

augroup ft_yaml
  au!
  au FileType yaml setlocal sw=2 sts=2 sw=2
augroup END

" }}}
" JavaScript {{{

augroup ft_javascript
  au!
  au FileType javascript setlocal sw=2 sts=2 sw=2
augroup END

" }}}
" JSON {{{

augroup ft_json
  au!
  au FileType json setlocal sw=2 sts=2 sw=2
augroup END

" }}}

" }}}
