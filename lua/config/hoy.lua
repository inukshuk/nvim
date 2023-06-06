-- Highlight yanked selection
local yh = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ timeout = 250 })
  end,
  group = yh,
  pattern = '*',
})
