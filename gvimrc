set guioptions-=m
set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

set background=light
colorscheme zenbones

packadd ale
packadd gitgutter
packadd lightline

let g:lightline.colorscheme = 'solarized'
set timeoutlen=200

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
