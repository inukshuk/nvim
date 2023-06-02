vim.cmd.packadd 'dev-icons'
vim.cmd.packadd 'alpha'

local config = require('alpha.themes.startify').config

config.layout[1].val = 3
config.layout[2].val = {
  ' N E O V I M'
}
config.layout[3].val = 2

require('alpha').setup(config)
