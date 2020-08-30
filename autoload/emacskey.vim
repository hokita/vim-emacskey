scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! emacskey#move_head() abort
  let start_col = col('.')

  normal! ^

  if col('.') == start_col
    normal! 0
  endif

  return ''
endfunction

function! emacskey#delete_rest() abort
  let original_line = getline(line('.'))
  let converted_line = (col('.') > 1) ? original_line[: col('.')-2] : ''

  call setline(line('.'), converted_line)

  return ''
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
