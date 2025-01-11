return {
	-- INFO: plugin vizualizador de arquivo markdown
   "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",  -- Comando para instalar as dependências do plugin
    ft = { "markdown" },  -- Carregar o plugin apenas para arquivos markdown
    config = function()
        -- Associa as extensões .MD e .md ao tipo de arquivo markdown
        vim.api.nvim_command('au BufRead,BufNewFile *.MD set filetype=markdown')
        vim.api.nvim_command('au BufRead,BufNewFile *.md set filetype=markdown')
    end
}
