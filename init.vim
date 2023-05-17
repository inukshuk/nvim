set autoindent
set whichwrap=b,s
set hidden

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap

set hlsearch
set ignorecase
set smartcase


set updatetime=2000
set signcolumn=auto

set number
set cursorline
set cursorlineopt=number

set wildmode=longest,list,full

set wildignore+=*.o,*.obj,*.so,*.swp,*.zip,*.exe

set novisualbell
set noerrorbells

set modeline
set modelines=5

set mouse=a

set encoding=utf-8

" Use space as leader
map <space> <leader>

" Split lines (reverse join)
nmap K r<enter><esc>f<space>

" Fast saving...
com Wq wq
com WQ wq
com W w

" Cut using `x` (use `dl` to delete one character)
nnoremap x d
xnoremap x d
nnoremap xx dd
nnoremap X D

augroup remember_position
  au!
  au BufReadPost * call setpos('.', getpos("'\""))
augroup end

augroup extra_space
  au!
  au BufWinEnter * match Error /\s\+$\| \+ze\t/
  au InsertEnter * match Error /\s\+\%#\@<!$/
  au InsertLeave * match Error /\s\+$\| \+ze\t/
  au BufWinLeave * call clearmatches()
augroup end

set exrc
