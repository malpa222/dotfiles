-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- packer, leave it

	-- lsp
	use 'neovim/nvim-lspconfig'

	-- coq
	use { 'ms-jpq/coq_nvim', branch = 'coq' }
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

	-- looks
	use 'nvim-lualine/lualine.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use 'kyazdani42/nvim-web-devicons'

	use 'folke/tokyonight.nvim'

	-- utils
	use { 
		'ms-jpq/chadtree', 
		branch = 'chad',
		run = "python3 -m chadtree deps"
	}
	use 'akinsho/toggleterm.nvim'
end)

-- load colorscheme
vim.cmd[[colorscheme tokyonight-moon]]

-- load plugins
vim.g.coq_settings = { auto_start = true }

require('lualine').setup({
	options = {
		theme = 'tokyonight'
	}
})

require('toggleterm').setup({
	open_mapping = [[<c-\>]],
	direction = 'float',
})
