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

fun! s:on_lsp_buffer_enabled() abort
  setl omnifunc=lsp#complete
  setl signcolumn=yes

  nnore (lsp) <nop>
  nmap <space> (lsp)
  nmap <buffer> gd <plug>(lsp-definition)
  " nmap <buffer> gr <plug>(lsp-references)
  " nmap <buffer> gi <plug>(lsp-implementation)
  " nmap <buffer> gt <plug>(lsp-type-definition)
  nmap <buffer> (lsp)rr <plug>(lsp-rename)
  " nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
  " nmap <buffg:lsp_highlights_enableder> ]g <Plug>(lsp-next-diagnostic)
  nmap <buffer> K <plug>(lsp-hover)
endfun

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server
    " registered.
    au User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" }}}
