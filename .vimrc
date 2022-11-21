" Main.
set encoding=UTF-8
set nocompatible
filetype off

syntax on
set number
set relativenumber
set ruler

" GVim.
set guioptions -=m 
set guioptions -=T
set guifont=Iosevka\ Nerd\ Font\ Mono\ 14

" NERDTree.
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plugins.
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Colourscheme
set termguicolors
colorscheme base16-default-dark

" Airline.
set noshowmode
set laststatus=2
let g:airline_theme='base16_default_dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Fix devicons for Kitty.
set t_RV=
