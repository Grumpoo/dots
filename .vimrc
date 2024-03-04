" Main.
set encoding=UTF-8
set nocompatible
filetype off
set ttymouse=sgr
set mouse=a

syntax on
set number
set relativenumber
set ruler
set termguicolors

set clipboard+=unnamed
set paste
set go+=a 

" NERDTree.
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plugins.
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/Colorizer'
Plug 'tribela/vim-transparent'
Plug 'vimsence/vimsence'

call plug#end()

" Colourscheme
set termguicolors
colorscheme base16-default-dark
let base16colorspace=256

" Lightline.
set noshowmode
set laststatus=2
let g:lightline = {
    \ 'colorscheme': substitute(g:colors_name, '-', '_', 'g')
    \ }
