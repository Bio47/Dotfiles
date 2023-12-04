-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Neo-tree keymaps
vim.keymap.set('n', '\\', '<cmd>Neotree toggle<CR>', { desc = 'Neotree reveal' })

-- Window Management
vim.keymap.set('n', '<leader>sv', '<cmd>vsplit<CR>', { desc = 'Split Vertically' })
vim.keymap.set('n', '<leader>sh', '<cmd>split<CR>', { desc = 'Split Horizontally' })
-- vim.keymap.set('n', '<leader>smm', '<cmd>MaximizerToggle<CR>', { desc = 'Toggle Minimize'})

-- Pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Navigate Left', noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Navigate Down', noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Navigate Up', noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Navigate Right', noremap = true, silent = true })

-- Indenting 
vim.keymap.set('v', '<', '<gv', { desc = 'Indent Line to Left' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent Line to Right' })
