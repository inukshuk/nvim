vim.cmd.packadd 'treesitter'

require('nvim-treesitter').setup {
  highlight = {
    enable = true
  }
}
