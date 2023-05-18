vim.cmd.packadd 'lush'
vim.cmd.packadd 'zenbones'

vim.o.termguicolors = true

vim.g.zenbones = {
  lightness = 'bright',
  darkness = 'warm',
  darken_noncurrent_window = true,
  lighten_noncurrent_window = true,
  transparent_background = true
}

vim.cmd.colorscheme 'zenbones'
