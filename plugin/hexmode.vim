if exists('g:loaded_hexmode')
  finish
endif
let g:loaded_hexmode = 1

command! HexMode call hexmode#toggle()
nnoremap <silent> <Plug>(HexModeToggle) :call hexmode#toggle()<CR>

if !exists('g:HexModePattern')
  let g:HexModePattern = '*.{bin,hex,exe,jpg,jpeg,png}'
endif

augroup hexmode
	au!
	exe 'autocmd BufReadPre ' . g:HexModePattern . ' setlocal binary'
	exe 'autocmd BufReadPost ' . g:HexModePattern . ' HexMode'
augroup END
