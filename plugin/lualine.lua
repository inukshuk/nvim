vim.cmd 'packadd lualine'
vim.cmd 'packadd dev-icons'

require('lualine').setup {
  options = {
    theme = 'solarized_light'
  }
}
