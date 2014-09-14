" Quick navigation {{{

" Go to start/end of the current line {{{
" In visual mode doesn't include new line character into selection.

nnore   H ^
nnore   L $
vnore   L g_

" }}}
" Moves up/down when lines wrap {{{

nnore   j  gj
nnore   k  gk
nnore   gj j
nnore   gk k

" }}}

" Expand to current file directory
cnore %% <c-r>=expand('%:h').'/'<cr>

" Open in new buffer
nmap <localleader>ew :e %%

" Open in split pane
nmap <localleader>es :sp %%

" Open in vertical split pane
nmap <localleader>ev :vsp %%

" Open in new tab
nmap <localleader>et :tabe %%

" }}}
" File edit {{{

" Yank to end of the line
nnore Y y$

" }}}
" Search and replace {{{

" Keep search matches in the middle of the window {{{

nmap n  nzzzv
nmap N  Nzzzv
nmap *  *zz
nmap #  #zz
nmap g* g*zz
nmap g# g#zz

" }}}

" Start substitution
nnore <leader>s :%s//<left>

" }}}
" Buffers and windows {{{

" Moving between buffers {{{

nnore <c-h> <c-w>h
nnore <c-j> <c-w>j
nnore <c-k> <c-w>k
nnore <c-l> <c-w>l

" }}}
" Resize current window by +/-5 {{{

nore <up> :resize -5<cr>
nore <down> :resize +5<cr>
nore <left> :vertical resize -5<cr>
nore <right> :vertical resize +5<cr>

" }}}

" }}}
" Evil mode (emacs key bindings) {{{

" Go to start/end of the line in command mode
cnore <c-e> <end>
cnore <c-a> <home>

" Save changes
nore <c-x><c-s> :w<cr>
inore <c-x><c-s> <esc>:w<cr>

" Close opened tab
nore <c-w><c-x> :tabclose<cr>

" Exit Vim editor, discards any changes
nnore <c-x><c-c> :qall!<cr>

" }}}
