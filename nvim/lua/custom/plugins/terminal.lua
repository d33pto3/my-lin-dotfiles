vim.notify('terminal.lua is loading', vim.log.levels.WARN)

vim.keymap.set('n', '<leader>tt', '<cmd>botright split | resize 15 | terminal<cr>', { desc = 'Open terminal (horizontal)' })
vim.keymap.set('n', '<leader>tv', '<cmd>vsplit | terminal<cr>', { desc = 'Open terminal (vertical)' })

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
