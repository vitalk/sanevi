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
  au FileType text setlocal textwidth=78 formatoptions=tcrqan2
augroup END

" }}}
" Make {{{

augroup ft_make
  au!
  au FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
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

" }}}
