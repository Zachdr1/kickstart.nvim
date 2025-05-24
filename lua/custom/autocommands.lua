-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- This ensures the commentstring is set for terraform files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'terraform',
  callback = function()
    vim.bo.commentstring = '#%s'
  end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
