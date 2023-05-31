vim.cmd.packadd 'dev-icons'
vim.cmd.packadd 'lualine'

vim.o.showmode = false

require('lualine').setup {
  options = {
    theme = 'auto'
  }
}
