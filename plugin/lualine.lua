vim.cmd [[
  packadd lualine
  packadd dev-icons
  packadd lush
  packadd zenbones
  set termguicolors
  colorscheme zenbones
]]

vim.o.showmode = false

vim.g.zenbones = {
  lightness = 'bright',
  darkness = 'warm',
  darken_noncurrent_window = true,
  lighten_noncurrent_window = true,
  transparent_background = true
}

require('lualine').setup {
  options = {
    theme = 'zenbones'
  }
}
