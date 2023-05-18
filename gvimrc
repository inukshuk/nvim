set guioptions-=m
set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

set background=light
packadd zenbones
colorscheme zenbones

set updatetime=250
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed = '~'
packadd gitgutter

packadd ale

packadd lightline
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'zenbones'
  \ }

if has('unix')
  if has('mac')
    set guifont=HackNFM-Regular:h13
  else
    set guifont=Hack\ 13
  endif
endif

if has('win32')
  set guifont=Hack:h12:cANSI:qDRAFT
endif
