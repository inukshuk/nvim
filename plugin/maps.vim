if exists('loaded_maps')
  finish
endif
let loaded_maps = 1

" Use space as leader
map <space> <leader>

" Split lines (reverse join)
nmap K r<enter><esc>f<space>

" Use s to sneak
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S

" Better up/down navigation in wrapped lines
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

" Alt-splits navigation
nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-l> <c-w>l
vnoremap <a-h> <c-\><c-n><c-w>h
vnoremap <a-j> <c-\><c-n><c-w>j
vnoremap <a-k> <c-\><c-n><c-w>k
vnoremap <a-l> <c-\><c-n><c-w>l
inoremap <a-h> <c-\><c-n><c-w>h
inoremap <a-j> <c-\><c-n><c-w>j
inoremap <a-k> <c-\><c-n><c-w>k
inoremap <a-l> <c-\><c-n><c-w>l
cnoremap <a-h> <c-\><c-n><c-w>h
cnoremap <a-j> <c-\><c-n><c-w>j
cnoremap <a-k> <c-\><c-n><c-w>k
cnoremap <a-l> <c-\><c-n><c-w>l

if has('nvim')
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-l> <c-\><c-n><c-w>l
  tnoremap <Esc> <C-\><C-n>
endif
