"remove trailing whitespace
function! s:TrimWhiteSpaces()
    let l = line('.')
    let c = line('.')
    execute ':%s/\s\+$//e'
    call cursor(l, c)
endfunction


command! -nargs=0 TrimWhiteSpaces call s:TrimWhiteSpaces()

