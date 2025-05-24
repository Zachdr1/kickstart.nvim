local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('i', 'jk', '<ESC>')

-- Harpoon
local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

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

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- tmux-sessionizer
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- fix/location list nav
vim.keymap.set('n', '<C-j>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-k>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lprev<CR>zz')

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-x>', '<C-w><C-c>', { desc = 'Close current split' })
