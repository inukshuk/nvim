function! hexmode#toggle() abort
  " Save modified/read-only state
  let l:modified = &modified
  let l:readonly = &readonly
  let l:modifiable = &modifiable

  setlocal noreadonly
  setlocal modifiable

  if !exists('b:isHexMode') || !b:isHexMode
    call hexmode#enter()
  else
    call hexmode#leave()
  endif

  " Restore modified/read-only state
  let &modified = l:modified
  let &readonly = l:readonly
  let &modifiable = l:modifiable
endfunction

function! hexmode#enter() abort
  " Save current options
  let b:filetype = &filetype
  let b:binary = &binary

  let &binary = 1
  let &filetype = 'xxd'

  call hexmode#convert()

  " Register buffer-local autocommands
  augroup HexModeBuffer
    au! * <buffer>
    autocmd BufUnload <buffer> call hexmode#clear()
    autocmd BufWritePre <buffer> call hexmode#preWrite()
    autocmd BufWritePost <buffer> call hexmode#postWrite()
  augroup END

  let b:isHexMode = 1
endfunction

function! hexmode#leave() abort
  " Restore previous options
  let &binary = b:binary
  let &filetype = b:filetype
  call hexmode#revert()
  call hexmode#clear()
endfunction

function! hexmode#clear()
  let b:isHexMode = 0
  augroup HexModeBuffer
    au! * <buffer>
  augroup END
endfunction

function! hexmode#preWrite() abort
  call hexmode#revert()
endfunction

function! hexmode#postWrite() abort
  call hexmode#convert()
  setlocal nomodified
endfunction

function! hexmode#convert()
  silent execute '%!xxd -u -g 2'
endfunction

function! hexmode#revert()
  silent execute '%!xxd -r'
endfunction

