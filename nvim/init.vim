let mapleader = " "

call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
source $HOME/.config/nvim/coc.vim

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
source $HOME/.config/nvim/telescope.vim

Plug 'catppuccin/vim', { 'as': 'catppuccin' }

Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'
Plug 'leoluz/nvim-dap-go'

Plug 'preservim/nerdtree'
source $HOME/.config/nvim/nerdtree.vim

call plug#end()

source $HOME/.config/nvim/dap.vim

:colorscheme catppuccin_mocha
:set number
