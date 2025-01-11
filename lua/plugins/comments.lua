return {
    'numToStr/Comment.nvim',
    config = function()
        local api = require('Comment.api')

        require('Comment').setup()
        vim.api.nvim_set_keymap(
            'i', 
            '<C-]>',
            '<Esc><Cmd>lua require("Comment.api").toggle.linewise.current()<CR>A',
            { noremap = true, silent = true, expr = false }
        )
    end
}
