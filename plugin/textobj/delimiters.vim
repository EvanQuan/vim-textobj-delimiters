" ============================================================================
" File:       delimiters.vim
" Maintainer: https://github.com/EvanQuan/vim-textobj-delimiters/
" Version:    1.2.0
"
" A Vim plugin that adds various symbols as delimiting text-objects.
" ============================================================================

if exists('g:loaded_textobj_delimiters')
  finish
endif

" Asterisks {{{

call textobj#user#plugin('asterisks', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a*',  '*select-a-function*': 's:select_a_asterisks',
\        'select-i': 'i*',  '*select-i-function*': 's:select_i_asterisks'
\      }
\    })

function! s:select_a_asterisks()
  normal! F*

  let end_pos = getpos('.')

  normal! f*

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_asterisks()
  normal! T*

  let end_pos = getpos('.')

  normal! t*

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Backslash {{{

call textobj#user#plugin('backslash', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a\',  '*select-a-function*': 's:select_a_backslash',
\        'select-i': 'i\',  '*select-i-function*': 's:select_i_backslash'
\      }
\    })

function! s:select_a_backslash()
  normal! F\

  let end_pos = getpos('.')

  normal! f\

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_backslash()
  normal! T\

  let end_pos = getpos('.')

  normal! t\

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Dollar {{{

call textobj#user#plugin('dollar', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a$',  '*select-a-function*': 's:select_a_dollar',
\        'select-i': 'i$',  '*select-i-function*': 's:select_i_dollar'
\      }
\    })

function! s:select_a_dollar()
  normal! F$

  let end_pos = getpos('.')

  normal! f$

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_dollar()
  normal! T$

  let end_pos = getpos('.')

  normal! t$

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Minus {{{

call textobj#user#plugin('minus', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a-',  '*select-a-function*': 's:select_a_minus',
\        'select-i': 'i-',  '*select-i-function*': 's:select_i_minus'
\      }
\    })

function! s:select_a_minus()
  normal! F-

  let end_pos = getpos('.')

  normal! f-

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_minus()
  normal! T-

  let end_pos = getpos('.')

  normal! t-

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Slash {{{

call textobj#user#plugin('slash', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a/',  '*select-a-function*': 's:select_a_slash',
\        'select-i': 'i/',  '*select-i-function*': 's:select_i_slash'
\      }
\    })

function! s:select_a_slash()
  normal! F/

  let end_pos = getpos('.')

  normal! f/

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_slash()
  normal! T/

  let end_pos = getpos('.')

  normal! t/

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Percent {{{

call textobj#user#plugin('percent', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a%',  '*select-a-function*': 's:select_a_percent',
\        'select-i': 'i%',  '*select-i-function*': 's:select_i_percent'
\      }
\    })

function! s:select_a_percent()
  normal! F%

  let end_pos = getpos('.')

  normal! f%

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_percent()
  normal! T%

  let end_pos = getpos('.')

  normal! t%

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Plus {{{

call textobj#user#plugin('plus', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a+',  '*select-a-function*': 's:select_a_plus',
\        'select-i': 'i+',  '*select-i-function*': 's:select_i_plus'
\      }
\    })

function! s:select_a_plus()
  normal! F+

  let end_pos = getpos('.')

  normal! f+

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_plus()
  normal! T+

  let end_pos = getpos('.')

  normal! t+

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Pipe {{{

call textobj#user#plugin('pipe', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a\|',  '*select-a-function*': 's:select_a_pipe',
\        'select-i': 'i\|',  '*select-i-function*': 's:select_i_pipe'
\      }
\    })



function! s:select_a_pipe()
  normal! F|

  let end_pos = getpos('.')

  normal! f|

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_pipe()
  normal! T|

  let end_pos = getpos('.')

  normal! t|

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Question Mark {{{

call textobj#user#plugin('question', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a?',  '*select-a-function*': 's:select_a_question',
\        'select-i': 'i?',  '*select-i-function*': 's:select_i_question'
\      }
\    })



function! s:select_a_question()
  normal! F?

  let end_pos = getpos('.')

  normal! f?

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_question()
  normal! T?

  let end_pos = getpos('.')

  normal! t?

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}
" Underscore {{{

call textobj#user#plugin('underscore', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'a_',  '*select-a-function*': 's:select_a_underscore',
\        'select-i': 'i_',  '*select-i-function*': 's:select_i_underscore'
\      }
\    })

function! s:select_a_underscore()
  normal! F_

  let end_pos = getpos('.')

  normal! f_

  let start_pos = getpos('.')
  return ['v', start_pos, end_pos]
endfunction

function! s:select_i_underscore()
  normal! T_

  let end_pos = getpos('.')

  normal! t_

  let start_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction

" }}}

let g:loaded_textobj_delimiters = 1
