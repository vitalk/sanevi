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

Plug 'phleet/vim-mercenary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-vinegar'
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
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'js': '\v[\/](node_modules)$',
      \ 'python': '\v[\/](*\.py[co]|eggs)$',
      \ 'system': '\v[\/](*\.sw[po]$',
      \ }
" Use ripgrep in CtrlP for listing files. Lightning fast and
" respects .gitignore.
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob "!*.py[co]" --glob "!node_modules*"'
  " rg is fast enough that CtrlP doesn’t need to cache
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
let g:qs_highlight_on_keys = ['f', 'F']

Plug 'kana/vim-textobj-user'
Plug 'Julian/vim-textobj-brace'
Plug 'beloglazov/vim-textobj-quotes'
xmap q iq
omap q iq

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_next_key = '<c-n>'
let g:user_emmet_prev_key = '<c-p>'

Plug 'vim-scripts/YankRing.vim'
" Hide yank history inside Vim folder
let g:yankring_history_dir = '$HOME/.vim'
" Limit the element’s lenght to 4M
let g:yankring_max_element_length = 4194304

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories = ['UltiSnips', '/Users/vital/.vim/UltiSnips']
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '−'
let g:gitgutter_sign_modified = '±'
let g:gitgutter_sign_modified_removed = '∓'

Plug 'itchyny/lightline.vim'

Plug 'w0rp/ale'
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'python': [
      \   'pylint',
      \   'mypy',
      \   'pyre',
      \   'yapf',
      \   'vulture'
      \ ],
      \ }

let g:ale_emit_conflict_warnings = 0

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --tern-completer' }
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']

if has('nvim')
  let g:python_host_prog = '/Users/vital/.pyenv/versions/nvim_py27/bin/python'
  let g:python3_host_prog = '/Users/vital/.pyenv/versions/nvim_py3/bin/python3'

  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1

  let g:deoplete#auto_complete_delay = 150

  " Ignore jedi errors for completions
  let g:deoplete#sources#jedi#ignore_errors = 1

endif

Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
set completeopt+=preview                          " enable preview window

Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
      \ 'name': 'file',
      \ 'whitelist': ['*'],
      \ 'priority': 10,
      \ 'completor': function('asyncomplete#sources#file#completor')
      \ }))

Plug 'prabirshrestha/asyncomplete-buffer.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'priority': 20,
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

if executable('pyls')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ 'priority': 100,
        \ })
endif

if (has('python') || has('python3'))
  Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

  " Mark selected nodes (those with the same name and scope as the one under
  " the cursor). Set to 2 to highlight the node currently under the cursor,
  " too.
  let g:semshi#mark_selected_nodes = 2

  " Enable plugin for pytest.python files as well
  let g:semshi#filetypes = ['python', 'pytest.python']

  " Custom semshi command
  nnore (semshi) <nop>
  nmap  <space>s (semshi)

  nnore (semshi)rr :Semshi rename<cr>

  nnore ]<space>  :Semshi goto name next<cr>
  nnore [<space>  :Semshi goto name prev<cr>

  nnore ]c        :Semshi goto class next<cr>
  nnore [c        :Semshi goto class prev<cr>

  nnore ]f        :Semshi goto function next<cr>
  nnore [f        :Semshi goto function prev<cr>

  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  let g:pymode_options_max_line_length = 100

  let g:pymode_syntax = 1       " enable syntax highlighting

  let g:pymode_folding = 0      " disable experimental folding feature

  let g:pymode_options = 0      " disable custom options defaults for new
                                " buffers, my defaults are sane enought to use
                                " them instead of this ones

  let g:pymode_virtualenv = 0   " let my shell environment manage virtualenvs


  let g:pymode_doc = 0          " use jedi-vim instead
  let g:pymode_rope = 0         " use jedi-vim instead
  let g:pymode_indent = 0       " use vim-python-pep8-indent instead

  let g:pymode_breakpoint = 0

  let g:pymode_lint = 0

  let g:pymode_motion = 0       " support vim motion for python objects
                                " such as functions, classes and methods,
                                " e.g. [[ ]] [M ]M aC iC aM iM

  Plug 'Vimjas/vim-python-pep8-indent'
  let g:python_pep8_indent_multiline_string = 1
  let g:python_pep8_indent_hang_closing = 0

  Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
  nnore <c-y> :call yapf#YAPF()<cr>
  inore <c-y> <c-o>:call yapf#YAPF()<cr>

  Plug 'psf/black'
endif

Plug 'vitalk/vim-onoff'
nnore <LocalLeader>c :Onoff cursorline<cr>
nnore <LocalLeader>h :Onoff hlsearch<cr>
nnore <LocalLeader>n :Onoff number<cr>
nnore <LocalLeader>p :Onoff paste<cr>
nnore <LocalLeader>s :Onoff spell<cr>
nnore <LocalLeader>i :Onoff list<cr>

Plug 'tpope/vim-obsession'

Plug 'othree/html5.vim'
Plug 'othree/csscomplete.vim'
Plug 'lepture/vim-jinja'
Plug 'groenewege/vim-less'
Plug 'vitalk/pytest-vim-compiler'
Plug 'kchmck/vim-coffee-script'
Plug 'wavded/vim-stylus'
Plug 'cakebaker/scss-syntax.vim'

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-jdaddy'
Plug 'chase/vim-ansible-yaml'
Plug 'saltstack/salt-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'posva/vim-vue'

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

Plug 'raimon49/requirements.txt.vim'

Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-expand-region'
Plug 'rust-lang/rust.vim'

call plug#end()

" }}}
