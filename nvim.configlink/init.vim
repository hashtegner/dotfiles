call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'trevordmiller/nova-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'cohama/lexima.vim'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
call plug#end()

set termguicolors
let g:nova_transparent = 1
colorscheme nova

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set noswapfile
set cursorline
set cursorcolumn

set expandtab
set shiftwidth=2

let mapleader="\<space>"

map <leader>\ :NERDTreeToggle<CR>
map <leader>w :w!<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :FZF<cr>
nnoremap <c-f> :Ag<space>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>

let g:deoplete#enable_at_startup = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
