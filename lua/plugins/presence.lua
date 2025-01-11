return{
  -- INFO: plugin responsavel por mostrar a atividade no discord
  'andweeb/presence.nvim',
  event = 'VimEnter',
  config = function()
    require("presence").setup({
      auto_update = true,
      neovim_image_text = "Neovim Text Editor",
      main_image = "neovim",
      client_id = "793271441293967371",
      log_level = nil,
      debounce_timeout = 10,
      enable_line_number = false,
      blacklist = {},
      buttons = true,
      file_assets = {},
      show_time = true,
      editing_text = "📝 Editando %s",
      file_explorer_text = "🔎 Procurando %s",
      git_commit_text = "🖋️ Commitando Mudancas",
      plugin_manager_text = "🔧 Gerenciando plugins",
      reading_text = "📰 Lendo %s",
      workspace_text = "💼 Trabalhando em %s",
      line_number_text = "📃 Linha %s de %s",
    })
  end,
}