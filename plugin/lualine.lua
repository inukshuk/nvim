vim.cmd 'packadd lualine'
vim.cmd 'packadd dev-icons'
vim.cmd 'packadd lush'
vim.cmd 'packadd zenbones'

vim.cmd 'set termguicolors'
vim.cmd 'colorscheme zenbones'

vim.g.zenbones = {
  lightness = 'bright',
  transparent_background = true
}

require('lualine').setup {
  options = {
    theme = 'zenbones'
  }
}
