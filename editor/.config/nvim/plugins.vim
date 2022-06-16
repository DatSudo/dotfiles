call plug#begin()

Plug 'morhetz/gruvbox'                                      " color scheme
Plug 'ryanoasis/vim-devicons'                               " icons
Plug 'cohama/lexima.vim'                                    " auto-close brackets, etc
Plug 'tpope/vim-commentary'                                 " toggle comment
Plug 'elkowar/yuck.vim'                                     " eww yuck support
Plug 'nvim-lualine/lualine.nvim'                            " status line
Plug 'kyazdani42/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'                                   " tab line
Plug 'akinsho/toggleterm.nvim'                              " Toggle terminal
Plug 'mhinz/vim-startify'                                   " fancy startup menu
Plug 'kyazdani42/nvim-web-devicons'                         " colored icons
Plug 'lervag/vimtex'                                        " Latex support
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }   " highlight color codes
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " auto-completion

call plug#end()
