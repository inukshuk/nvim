if exists('loaded_copy_paste')
  finish
endif
let loaded_copy_paste = 1

packadd cutlass
packadd yoink

let g:yoinkIncludeDeleteOperations = 1

" `x` to cut (use `dl` to delete one character)
nnoremap x d
xnoremap x d
nnoremap xx dd
nnoremap X D

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)

nmap <c-p> <plug>(YoinkPostPasteSwapBack)
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)

nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
