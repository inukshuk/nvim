vim.cmd.packadd 'lush'
vim.cmd.packadd 'zenbones'

vim.o.termguicolors = true

vim.g.zenwritten = {
  lightness = 'dim',
  darkness = 'warm',
  darken_noncurrent_window = true,
  lighten_noncurrent_window = true,
  transparent_background = true,
  italic_comments = true,
  darken_comments = 60,
  lighten_comments = 40,
}

vim.cmd.colorscheme 'zenwritten'
