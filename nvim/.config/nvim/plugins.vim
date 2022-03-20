call plug#begin()

Plug 'morhetz/gruvbox'                                      " color scheme
Plug 'vim-airline/vim-airline'                              " status line
Plug 'vim-airline/vim-airline-themes'                       " status line theme
Plug 'preservim/nerdtree'                                   " file navigator
Plug 'ryanoasis/vim-devicons'                               " icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'              " file navigator file highlighting
Plug 'cohama/lexima.vim'                                    " auto-close brackets, etc
Plug 'tpope/vim-commentary'                                 " toggle comment
Plug 'elkowar/yuck.vim'                                     " eww yuck support
Plug 'akinsho/toggleterm.nvim'                              " Toggle terminal
Plug 'mhinz/vim-startify'                                   " fancy startup menu
Plug 'kyazdani42/nvim-web-devicons'                         " colored icons
Plug 'romgrk/barbar.nvim'                                   " tab line
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " syntax highlighting
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }   " highlight color codes
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " auto-completion

call plug#end()
