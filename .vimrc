set nocompatible
filetype off

let mapleader="<C-B>"

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

" coc config
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ ]

if (has("termguicolors"))
    set termguicolors
endif
:tnoremap <Esc> <C-\><C-n>
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
set clipboard+=unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and tabbed files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" capital Y remap
nnoremap Y y$

" Nerdtree show hidden files
let NERDTreeShowHidden=1

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" greatest remap ever
vnoremap <leader>p "_dP

" remap space to play q macro
nnoremap <Space> @q

let macvim_skip_colorscheme=1
