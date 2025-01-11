vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
return {
  -- INFO: plugin da arvore de arquivos
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
    	sort_by = "case_sensitive",
  view = {
    width = 26,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
    })
  end,
}


