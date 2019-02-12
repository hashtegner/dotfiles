call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'cohama/lexima.vim'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'wakatime/vim-wakatime'
call plug#end()

let g:go_fmt_command = "goimports"

set termguicolors
set background=dark
colorscheme nord
let g:nord_comment_brightness = 13
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set noswapfile
set cursorline
set listchars=tab:→\ ,space:·,nbsp:␣,precedes:«,extends:»
set list

set expandtab
set shiftwidth=2

fun! StripTrailingWhitespaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

autocmd BufWritePre * :call StripTrailingWhitespaces()

let mapleader=","

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

set laststatus=2


let g:deoplete#enable_at_startup = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
