set nocompatible
filetype off

call plug#begin("~/.config/nvim/plugged")

    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Raimondi/delimitMate'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpenguinltg/vim-closing-brackets'

call plug#end()

if (has("termguicolors"))
    set termguicolors
endif
:tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert
nnoremap <silent> <esc> :noh<cr><esc>
map <silent> <C-n> :NERDTreeFocus<CR>

set background=dark
colorscheme gruvbox

set number
set relativenumber
set ignorecase
set incsearch
set tw=79
set cursorline
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and tabbed files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" greatest remap ever
vnoremap <leader>p "_dP

let macvim_skip_colorscheme=1
