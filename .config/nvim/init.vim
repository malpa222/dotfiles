syntax on
set number

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

" buffers
set hidden

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'liuchengxu/space-vim-dark'

call plug#end()

" theme
colorscheme space-vim-dark
set termguicolors
hi Comment cterm=italic
hi LineNr ctermbg=NONE guibg=NONE

nnoremap <c-f> :NERDTreeToggle<cr>

" coc
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes

" browse through autocompletion with tabs
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" select autocompletion with enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
