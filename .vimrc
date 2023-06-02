"=== ndinecoder vim-config ==="
syntax on 
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir 
set undofile
set incsearch
set laststatus=2
set hidden
set encoding=utf-8
set laststatus=2
set t_Co=255
set cc=80
set mouse=a
let g:airline_powerline_fonts = 1

"=== enable airline for the tab line ==="
let g:airline#extensions#tabline#enabled = 1

"=== set tabname to file name only ==="
let g:airline#extensions#tabline#fnamemod = ':t'

"=== configure plugins ==="
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

call plug#end()


"=== nerd-tree-setup ==="
"=== start nerd-tree and put the cursor back in the other window ==="
autocmd VimEnter * NERDTree | wincmd p

"=== exit nerd-tree when no file present ==="
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") 
      \ && b:NERDTree.isTabTree()) | q | endif

"=== adjust its size ==="
let g:NERDTreeWinSize = 25

"=== compile java files ==="
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

"=== remap keys ==="
map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map nn gT
nnoremap <Leader>; :
nnoremap <Leader>r :w<CR>:!%<CR>

nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>s :split<CR>
nnoremap <Leader>sf :source %<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>

"=== italic comments ==="
highlight Comment cterm=italic
