" Essential {{{

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
" Bring up the output of git status in the preview window.
nnore gs :Gstatus<CR>
" Perform a vimdiff against the current file in the given revision.
nnore gd :Gdiff<CR>
" Start git command
nnore git :Git
" Start interactive rebase in current branch
nnore gri :Git rebase -i HEAD~

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'

Plug 'altercation/vim-colors-solarized'
let g:solarized_termtrans = 1
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"

Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_extensions = ['funcy', 'filetype']
let g:ctrlp_cmd = 'CtrlP'                       " open ctrlp in file find mode
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'   " set the directory to store the cache files
let g:ctrlp_clear_cache_on_exit = 0             " enable cross-session caching
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|eggs|*\.py[co]|*\.sw[po])$'
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

Plug 'vitalk/ctrlp-funky'
nnore <leader>f :CtrlPFunky<cr>

Plug 'endel/ctrlp-filetype.vim'
nnore <leader>e :CtrlPFiletype<cr>

Plug 'vitalk/vim-simple-todo'
Plug 'jiangmiao/auto-pairs'

Plug 'vitalk/vim-onoff'
nnore <LocalLeader>c :Onoff cursorline<cr>
nnore <LocalLeader>h :Onoff hlsearch<cr>
nnore <LocalLeader>n :Onoff number<cr>
nnore <LocalLeader>p :Onoff paste<cr>
nnore <LocalLeader>s :Onoff spell<cr>
nnore <LocalLeader>i :Onoff list<cr>

call plug#end()

" }}}
