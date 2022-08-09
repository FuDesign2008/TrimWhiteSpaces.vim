scriptencoding utf-8

if &compatible || exists('b:trim_white_spaces')
    finish
endif
let b:trim_white_spaces = 1
let s:save_cpo = &cpoptions
set cpoptions&vim

"remove trailing whitespace
function! s:TrimWhiteSpaces()
    let l = line('.')
    let c = line('.')
    execute ':%s/\s\+$//e'
    call cursor(l, c)
endfunction


command! -nargs=0 TrimWhiteSpaces :call s:TrimWhiteSpaces()

let &cpoptions = s:save_cpo

