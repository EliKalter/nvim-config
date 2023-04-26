-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- Toggle nvim-tree
map('n', '<leader>fs', ':NvimTreeToggle <CR>', {})
map('n', '<leader>il', ':IndentLinesToggle', {})
map('n', '<leader>ff', ':Telescope find_files <CR>', {})
map('n', '<leader>pu', ':UndotreeToggle', {})
map('n', '<leader>ft', ':FloatermToggle myfloat<CR>', {})
map('t', '<Esc>', '<C-\\><C-n>:q<CR>', {})
-- map('n', '<leader>tb', '', {})
