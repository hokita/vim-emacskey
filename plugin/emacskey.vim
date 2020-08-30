scriptencoding utf-8

if exists('g:loaded_emacskey')
  finish
endif
let g:loaded_emacskey = 1

let s:save_cpo = &cpo
set cpo&vim

imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call emacskey#move_head()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=emacskey#delete_rest()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
