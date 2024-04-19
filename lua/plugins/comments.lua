return {
	-- INFO: plugin de comentar/descomentar linhas com atalhos
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}