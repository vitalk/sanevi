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
" Python {{{

augroup ft_pytest
  au!
  au BufNewFile,BufRead test_*.py,*_test.py,conftest.py setl ft=pytest.python
  au FileType pytest.python
        \ compiler pytest |
        \ nnore <buffer> <s-e> :Make %<cr>
augroup END

" }}}
" Markdown {{{

augroup ft_markdown
  au!
  au BufNewFile,BufRead *.md setlocal ft=markdown
augroup END

" }}}
" Jinja {{{

augroup ft_jinja
  au!
  au FileType jinja setlocal ts=2 sts=2 sw=2 |
        \ inore  <c-g>  _('')<left><left>
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
" Vim {{{

augroup ft_vim
  au!
  au FileType vim setl ts=2 sts=2 sw=2 fdm=marker fmr={{{,}}}
  au FileType vim nnore <buffer> <s-e> :Runtime\|PP<cr>
  "au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif

  fun! s:quithelp()
    if &buftype == 'help'
      quit
    endif
  endfun
  au FileType help
        \ nnore <buffer> q       :call <sid>quithelp()<cr> |
        \ nnore <buffer> <left>  :left<cr> |
        \ nnore <buffer> <right> :right<cr> |
        \ nnore <buffer> <down>  :center<cr> |
        \ nnore <buffer> <cr>    <c-]>
augroup END

" }}}
" Quickfix {{{

augroup ft_quickfix
  au!
  " Use q to quit any location/quickfix list
  au FileType qf setl cursorline |
        \ nnore <buffer> q :cclose<cr>
augroup END

" }}}
" YAML {{{

augroup ft_yaml
  au!
  au FileType yaml setlocal sw=2 sts=2
augroup END

" }}}
" JavaScript {{{

augroup ft_javascript
  au!
  au FileType javascript setlocal sw=2 sts=2
augroup END

" }}}
" Stylus {{{

augroup ft_stylus
  au!
  au FileType stylus setl sw=2 sts=2
augroup END

" }}}
" Handlebars {{{

augroup ft_handlebars
  au!
  au FileType html.handlebars setl sw=2 sts=2
augroup END

" }}}
" JSON {{{

augroup ft_json
  au!
  au FileType json setlocal sw=2 sts=2
augroup END

" }}}

" }}}
