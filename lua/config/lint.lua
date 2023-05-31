vim.cmd.packadd 'lint'

local lint = require('lint')

lint.linters_by_ft = {
  markdown = { 'vale' },
  text = { 'vale' },
  sh = { 'shellcheck' }
}

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function ()
    lint.try_lint()
  end
})
