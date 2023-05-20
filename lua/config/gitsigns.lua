vim.cmd.packadd 'gitsigns'

local gs = require 'gitsigns'

gs.setup {
  on_attach = function(bufnr)
    vim.keymap.set('n', '[c', gs.prev_hunk, {
      buffer = bufnr,
      desc = 'Go to Previous Hunk'
    })
    vim.keymap.set('n', ']c', gs.next_hunk, {
      buffer = bufnr,
      desc = 'Go to Next Hunk'
    })
    vim.keymap.set('n', '<leader>ph', gs.preview_hunk, {
      buffer = bufnr,
      desc = '[P]review [H]unk'
    })
  end
}
