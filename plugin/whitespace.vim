if exists('loaded_whitespace')
  finish
endif
let loaded_whitespace = 1

augroup extra_space
  au!
  autocmd BufWinEnter,InsertLeave * match Error /\s\+$\| \+ze\t/
  autocmd InsertEnter * match Error /\s\+\%#\@<!$/
  autocmd BufWinLeave * call clearmatches()
augroup end
