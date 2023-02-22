local opts = { noremap = true, silent = true }

vim.keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- QOL changes
vim.keymap.set('n', '<C-y>', '8<C-y>', opts)
vim.keymap.set('n', '<C-e>', '8<C-e>', opts)
vim.keymap.set('n', '<C-w>+', '8<C-w>+', opts)
vim.keymap.set('n', '<C-w>-', '8<C-w>-', opts)
vim.keymap.set('n', '<C-w>>', '8<C-w>>', opts)
vim.keymap.set('n', '<C-w><', '8<C-w><', opts)

-- pasting doesnt copy the selection
vim.keymap.set('v', 'p', '"_dP', opts)
-- select pasted text
vim.keymap.set('v', 'gp', '`[v`]', opts)
