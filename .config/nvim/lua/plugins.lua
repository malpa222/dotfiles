-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- packer, leave it

	-- looks
	use 'nvim-lualine/lualine.nvim'
	use "rafamadriz/neon"
	use 'kyazdani42/nvim-web-devicons'

	-- utils
	use 'kyazdani42/nvim-tree.lua'
	use 'rstacruz/vim-closer'
	use 'akinsho/toggleterm.nvim'

	-- coc
	use { 'neoclide/coc.nvim', branch = 'release' }
end)

-- set colorscheme
vim.g.neon_style = 'doom'
vim.cmd[[colorscheme neon]]

-- load plugins
require('coc-config')

require('nvim-tree').setup()
require('lualine').setup({
	options = { theme = 'neon' }
})
require('toggleterm').setup({
	open_mapping = [[<c-\>]],
})
