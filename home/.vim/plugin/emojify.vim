if exists('g:loaded_emojify')
    finish
endif
let g:loaded_emojify = 1

function s:insertEmojify() abort
  let l:emoji = s:emojify(getline('.'))
  call setline('.', l:emoji)
endfunction

function! s:emojify(fmt) abort
  let l:cmd = "emojify " . '"' . a:fmt . '"'
  " If it's not baroque, don't fix it!
  "
  " But vim is horribly, horribly baroque.
  let l:output = system(l:cmd)[0:-2]

  return l:output
endfunction

command! -nargs=1 -nargs=1 Emoji echom trim(s:emojify(<q-args>))
command! -nargs=0 EmojiThis call s:insertEmojify()
