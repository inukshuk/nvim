vim.cmd.packadd 'lush'
vim.cmd.packadd 'zenbones'
vim.cmd.packadd 'monochrome'
vim.cmd.packadd 'gruvbox'
vim.cmd.packadd 'deepwhite'

vim.o.termguicolors = true

require('gruvbox').setup {
  contrast = 'soft',
  dim_inactive = false,
  transparent_mode = true
}

local zenbones_config = {
  lightness = 'dim',
  darkness = 'warm',
  darken_noncurrent_window = true,
  lighten_noncurrent_window = true,
  transparent_background = true,
  italic_comments = true,
  darken_comments = 60,
  lighten_comments = 40,
}

vim.g.duckbones = zenbones_config
vim.g.forestbones = zenbones_config
vim.g.kanagawabones = zenbones_config
vim.g.neobones = zenbones_config
vim.g.nordbones = zenbones_config
vim.g.rosebones = zenbones_config
vim.g.seoulbones = zenbones_config
vim.g.tokyobones = zenbones_config
vim.g.vimbones = zenbones_config
vim.g.zenbones = zenbones_config
vim.g.zenburned = zenbones_config
vim.g.zenwritten = zenbones_config

vim.cmd.colorscheme 'zenwritten'
