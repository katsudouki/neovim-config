return {
    -- INFO: plugin de simbolos do git
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup({
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
            on_attach = function(bufnr)
                vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gp', '<cmd>lua require("gitsigns").prev_hunk()<CR>', { noremap = true, silent = true, desc = '[G]o to [P]revious Hunk' })
                vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gn', '<cmd>lua require("gitsigns").next_hunk()<CR>', { noremap = true, silent = true, desc = '[G]o to [N]ext Hunk' })
                vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ph', '<cmd>lua require("gitsigns").preview_hunk()<CR>', { noremap = true, silent = true, desc = '[P]review [H]unk' })
            end,
        })
    end
}