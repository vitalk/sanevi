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
" Rust {{{

augroup ft_rust
  au!
  au BufRead,BufNewFile Cargo.toml,Cargo.lock
        \ let b:dispatch = 'cargo build'

  au FileType rust
        \ compiler cargo |
        \ setl makeprg=cargo |
        \ nnore <buffer> <s-e> :Dispatch cargo run<cr> |
        \ nnore <buffer> <s-d> :Dispatch cargo check<cr>

augroup END

" }}}
" Python {{{

augroup ft_pytest
  au!
  au BufNewFile,BufRead *test*.py,test_*.py,*_test.py,conftest.py
        \ setl ft=python |
        \ nnore <buffer> <s-d> :Dispatch<cr>

  au BufNewFile,BufRead, */test/db_tests/**.py
        \ let b:dispatch = 'python -Wignore ./oomnitza_commands/oomnitza.py test ./etc/oo_test.ini --verbosity 2 --workdir %'

  au BufNewFile,BufRead, */oomnitza_workflow/tests/**.py
        \ let b:dispatch = 'COLUMNS=120 unittest=% make -f /Users/vital/Development/Web/Oomnitza/automate/Makefile.wf test'

  au FileType python
        \ call CustomSemshiHl()

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
  au FileType qf
        \ setl nocursorline |
        \ setl listchars= |
        \ setl tw=0 |
        \ nnore <buffer> q :cclose<cr>

  " Use s to open file in split
  au FileType qf
        \ nnore <buffer> s <c-w><enter><c-w>l

  au FileType qf
        \ call PytestSyntax()

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
" Ansible inventory {{{

augroup ft_ansible_inventory
  au!
  au BufNewFile,BufRead **/host_vars/*,**/group_vars/* set ft=ansible
augroup END

" }}}
" }}}
