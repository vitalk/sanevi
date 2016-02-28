" Plugged {{{

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
" Custom git command
nnore (git) <nop>
nmap  <space>g (git)
" Start git command
nnore (git)it :Git
" Bring up the output of git status in the preview window.
nnore (git)s :Gstatus<cr>
" Record changes to the repository.
nnore (git)co :Gcommit<cr>
" Rewrite head commit.
nnore (git)ca :Gcommit --amend<cr>
" Interactively choose hunks of path between the index and the work tree and
" add them to the index.
nnore (git)ap :Git add . -p
" Perform a vimdiff against the current file in the given revision.
nnore (git)d :if &diff<bar>diffupdate<bar>else<bar>Gdiff<bar>endif<cr>
" Start interactive rebase in current branch
nnore (git)ri :Git rebase -i HEAD~
" Happy grepping in repository
nnore (git)re :Ggrep<space>
nnore (git)l  :Glog<cr>
nnore (git)b  :Gblame<cr>
nnore (git)e  :Gedit<cr>
nnore (git)w  :Gwrite<bar>e<cr>
"                         ^ reload buffer to update git gutter
nnore (git)r  :Gread<cr>
" Stash the changes in a dirty working directory away and pop them back.
nnore (git)ss :Git stash<cr>
nnore (git)sp :Git stash pop<cr>
nnore (git)pu :Gpush origin<space>
nnore (git)pl :Gpull origin<space>

Plug 'vitalk/gitv'
" Opens gitv in separate tab
nnore (git)v :Gitv<cr>
" Disable default ctrl mappings, so buffer movement keys (<c-hjkl>)
" work as expected.
let g:Gitv_DoNotMapCtrlKey = 1
au FileType gitv nmap <buffer> <silent> <c-n> <Plug>(gitv-jump-forward)
au FileType gitv nmap <buffer> <silent> <c-p> <Plug>(gitv-jump-backward)
" Disable text width column to prevent showing cursor column at 80 character.
au FileType gitv setl tw=0

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-scriptease'
Plug 'godlygeek/tabular', {'on': 'Tabularize'}
Plug 'sjl/vitality.vim'
Plug 'shvechikov/vim-keymap-russian-jcukenmac'

Plug 'altercation/vim-colors-solarized'
let g:solarized_termtrans = 1
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"

Plug 'henrik/vim-indexed-search'
let g:indexed_search_shortmess = 1

Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_extensions = ['funky', 'filetype']
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
let types = {}
let types.go = '--language-force=go --golang-types=ftv'
let types.coffee = '--language-force=coffee --coffee-types=cmfvf'
let types.markdown = '--language-force=markdown --markdown-types=hik'
let types.python = '--language-force=python'
let g:ctrlp_buftag_types = types
nnore <leader>t :CtrlPBufTag<cr>
inore <leader>t <esc>:CtrlPBufTag<cr>

Plug 'vitalk/ctrlp-funky'
nnore <leader>f :CtrlPFunky<cr>

Plug 'endel/ctrlp-filetype.vim'
nnore <leader>e :CtrlPFiletype<cr>

Plug 'vitalk/vim-fancy'
Plug 'vitalk/vim-simple-todo'
Plug 'jiangmiao/auto-pairs'

Plug 'unblevable/quick-scope'
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

Plug 'kana/vim-textobj-user'
Plug 'Julian/vim-textobj-brace'
Plug 'beloglazov/vim-textobj-quotes'
xmap q iq
omap q iq

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_next_key = '<c-n>'
let g:user_emmet_prev_key = '<c-p>'

Plug 'YankRing.vim'
" Hide yank history inside Vim folder
let g:yankring_history_dir = '$HOME/.vim'
" Unlimited cache size
let g:yankring_max_element_length = 0

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '−'
let g:gitgutter_sign_modified = '±'
let g:gitgutter_sign_modified_removed = '∓'

Plug 'scrooloose/syntastic', {'on': 'SyntasticToggleMode'}

Plug 'Shougo/neocomplcache.vim'
" Enable at startup
let g:neocomplcache_enable_at_startup = 1
" Use the smartcase
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3

let omni = get(g:, 'neocomplcache_force_omni_patterns', {})
let omni.sql = '[^.[:digit:] *\t]\%(\.\)\%(\h\w*\)\?'
let omni.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplcache_force_omni_patterns = omni

inore <expr> <c-g> neocomplcache#undo_completion()
inore <expr> <c-l> neocomplcache#complete_common_string()
inore <expr> <cr> pumvisible() && exists("*neocomplete#close_popup") ? neocomplete#close_popup() : "\<cr>"

if (has('python') || has('python3'))
  Plug 'davidhalter/jedi-vim'
  let g:jedi#goto_assignments_command = "gd"
  " We use `neocomplcache` plugin configured to work with `jedi` completion
  " (https://github.com/davidhalter/jedi-vim/issues/26)
  let g:jedi#popup_on_dot = 0
  " Improve performance for big files
  let g:jedi#show_call_signatures = 1
endif

Plug 'vitalk/vim-onoff'
nnore <LocalLeader>c :Onoff cursorline<cr>
nnore <LocalLeader>h :Onoff hlsearch<cr>
nnore <LocalLeader>n :Onoff number<cr>
nnore <LocalLeader>p :Onoff paste<cr>
nnore <LocalLeader>s :Onoff spell<cr>
nnore <LocalLeader>i :Onoff list<cr>

Plug 'lepture/vim-jinja'
Plug 'groenewege/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'vitalk/vim-javascript'
Plug 'leshill/vim-json'
Plug 'tpope/vim-jdaddy'
Plug 'chase/vim-ansible-yaml'

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

call plug#end()

" }}}
