return {
  -- INFO: plugin de melhorias na interface e caixa para comandos
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },

  -- Plugin para o nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "onsails/lspkind.nvim"
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind')

      -- Configurar ícones personalizados para lspkind
      local symbol_map = {
        Text = '  ',
        Method = '  ',
        Function = '  ',
        Constructor = '  ',
        Field = '  ',
        Variable = '  ',
        Class = '  ',
        Interface = '  ',
        Module = '  ',
        Property = '  ',
        Unit = '  ',
        Value = '  ',
        Enum = '  ',
        Keyword = '  ',
        Snippet = '  ',
        Color = '  ',
        File = '  ',
        Reference = '  ',
        Folder = '  ',
        EnumMember = '  ',
        Constant = '  ',
        Struct = '  ',
        Event = '  ',
        Operator = '  ',
        TypeParameter = '  ',
        TabNine = ''
      }

      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = 'symbol_text',
            maxwidth = 50,
            symbol_map = symbol_map,
          })
        },
        snippet = {
          -- Configuração para snippets, se necessário
          expand = function(args)
            -- exemplo usando luasnip
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          -- adicionar outras fontes aqui
        })
      })
    end,
  },
}
