local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Open verticle split' })
vim.keymap.set('n', '<leader>sh', '<C-w>h', { desc = 'Open horizontal split' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('i', 'jk', '<ESC>')

-- Harpoon
local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

-- Explorer
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- Navigate between files
vim.keymap.set('n', '<leader>1', function()
  ui.nav_file(1)
end)
vim.keymap.set('n', '<leader>2', function()
  ui.nav_file(2)
end)
vim.keymap.set('n', '<leader>3', function()
  ui.nav_file(3)
end)
vim.keymap.set('n', '<leader>4', function()
  ui.nav_file(4)
end)

-- tmux-sessionizer
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
