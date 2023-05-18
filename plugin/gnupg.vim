if exists('loaded_gnupg') || !has('unix')
  finish
endif
let loaded_gnupg = 1

packadd gnupg
