local set = vim.opt

local map = vim.keymap.set
local options = {}

set.updatetime = 300
set.signcolumn = 'yes'

vim.cmd [[
	inoremap <silent><expr> <TAB>
		  \ coc#pum#visible() ? coc#pum#next(1):
		  \ CheckBackspace() ? "\<Tab>" :
		  \ coc#refresh()
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
]]

vim.cmd [[
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]]
