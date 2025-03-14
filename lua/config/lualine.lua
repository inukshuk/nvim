vim.cmd.packadd 'dev-icons'
vim.cmd.packadd 'lualine'

vim.o.showmode = false

require('lualine').setup {
  options = {
    theme = 'auto'
  }
}

require('nvim-web-devicons').setup {
  override_by_extension = {
    ["liquid"] = { icon = "", color = "#67B8DE", cterm_color = "86", name = "Liquid" }
  }
}
