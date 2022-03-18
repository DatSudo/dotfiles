""" Key remaps
nnoremap j gj
nnoremap k gk

" Disable arrow keys : normal mode
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" Disable arrow keys : insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Remap save, quit
let mapleader = "\<Space>"
nmap <Leader>q :q<CR> " quit
nmap <Leader>w :w<CR> " save
nmap <Leader>x :wq<CR> " save and quit
nmap <Leader>z :q!<CR> " quit without saving

" Remove highlights after search
nnoremap <CR> :noh<CR>

" Nerd tree
let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTreeToggle<CR>
