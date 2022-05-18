set encoding=utf-8
set fileencoding=utf-8
set relativenumber
set wrap         " word wrap
set number       " show line numbers
set tabstop=4    " show tab with 4 spaces
set shiftwidth=4 " when indenting, use 4 spaces
set expandtab    " on pressing tab, insert 4 spaces
set ls=2         " show status line
set ai           " enable autoindent
set autoindent
set mouse=a
set nobackup
set nowritebackup
set ignorecase
set cmdheight=2
set updatetime=300
set shortmess+=c
syntax enable

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

let g:Hexokinase_highlighters = ['backgroundfull']
