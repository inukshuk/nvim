if exists('loaded_maps')
  finish
endif
let loaded_maps = 1

" Use space as leader
map <space> <leader>

" Split lines (reverse join)
nmap K r<enter><esc>f<space>
