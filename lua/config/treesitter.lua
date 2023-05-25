vim.cmd.packadd 'treesitter'

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  }
}
