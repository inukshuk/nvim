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

packadd cutlass
" `x` (use `dl` to delete one character)
nnoremap x d
xnoremap x d
nnoremap xx dd
nnoremap X D

packadd yoink
nmap <c-p> <plug>(YoinkPostPasteSwapBack)
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)
nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)
let g:yoinkIncludeDeleteOperations = 1

packadd subversive
" `s` for substitute (use `sl` to sub one character)
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)
nmap <leader>s <plug>(SubversiveSubstituteRange)
xmap <leader>s <plug>(SubversiveSubstituteRange)
nmap <leader>ss <plug>(SubversiveSubstituteWordRange)
xmap s <plug>(SubversiveSubstitute)
xmap p <plug>(SubversiveSubstitute)
xmap P <plug>(SubversiveSubstitute)

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
