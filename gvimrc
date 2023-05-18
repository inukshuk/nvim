set guioptions-=m
set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

set background=light
packadd zenbones
colorscheme zenbones

packadd ale

packadd gitgutter
set updatetime=200

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
