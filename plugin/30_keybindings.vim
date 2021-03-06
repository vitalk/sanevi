" Essential {{{

" I'm suck at typing. Remap keys in command mode may produces unexpected
" behavior, so keep them as is.
nnore   ; :
inore   ; :
xnore   ; :
nnore   : ;
inore   : ;
xnore   : ;

" }}}
" UI {{{

" Force redraw (update) syntax highlighting for buffer.
nnore U :syntax sync fromstart<cr>:redraw!<cr>

" }}}
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

" Open in new buffer
nnore <localleader>ew :e <c-r>=expand('%:h').'/'<cr>

" Open in split pane
nnore <localleader>es :sp <c-r>=expand('%:h').'/'<cr>

" Open in vertical split pane
nnore <localleader>ev :vsp <c-r>=expand('%:h').'/'<cr>

" Open in new tab
nnore <localleader>et :tabe <c-r>=expand('%:h').'/'<cr>

" }}}
" File edit {{{

" Yank to end of the line
nnore Y y$

" Select the last inserted text
nnore gV `[v`]

" Select the contents of the current line, excluding indentation
nnore vv  ^vg_

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

" Search withing visual block
xnore / <esc>/\%V

" Start substitution
nnore <leader>s :%s/

" Substitute within visual block
xnore <leader>s <esc>:%s/\%V

" Clear the last used search pattern
nnore <esc><esc> :let @/ = ""<cr>

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

" Expand the current pane as much as possible
nore <c-w>O <c-w><bar><c-w>_

" }}}

" }}}
