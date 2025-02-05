return {
  -- INFO: Plugin responsável pela formatação com Prettier e Black
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },  -- Dependência necessária para o null-ls
  event = 'BufReadPre',  -- Esse evento será disparado antes da leitura do arquivo
  config = function()
    -- Configuração do null-ls para integrar o Prettier e Black
    local null_ls = require("null-ls")

    -- Configurando o null-ls com o Prettier para formatação de arquivos front-end
    -- e o Black para formatação de arquivos Python
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
      },
    })

vim.cmd([[
  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss,*.html,*.py silent! lua vim.lsp.buf.format({ async = false })
]])

  end,
}
