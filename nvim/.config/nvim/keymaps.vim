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
let NERDTreeMapOpenInTab='\r'
nnoremap <C-n> :NERDTreeToggle<CR>

" Toggle comment
map <C-_> :Commentary<CR>

" Toggle terminal
map <C-t> :ToggleTerm<CR>

" Close tab
nnoremap <C-w> :bd<CR>

" Goto buffer in position n
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
