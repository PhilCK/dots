" Setup
" -----
set nocompatible
filetype off


" Plugins
" -------
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'xero/blaquemagick.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'fxn/vim-monochrome'
Plug 'junegunn/fzf', {'do': './install --all' }
call plug#end()


" General Settings
" ----------------
"set number
set mouse=a
set expandtab
set tabstop=2
set backspace=2
set shiftwidth=2
set softtabstop=2
set linespace=1
set colorcolumn=81
set laststatus=2
let &t_Co=256
syntax enable
colorscheme onedark 
set clipboard=unnamedplus
let g:deoplete#enable_at_startup = 1

" Hidden Characters
" -----------------
set list
set listchars=eol:¬
set listchars+=tab:>·
set listchars+=trail:~
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=space:␣
set listchars+=nbsp:⦸

scriptencoding 'utf-8'

" Wrap lines which are longer than screen width
set wrap
if has('linebreak')
  " Break wrapped lines at a character in breakat
  set linebreak
  " Downwards Arrow With Tip Rightwards (U+21B3, utf-8: E2 86 B3)
  let &showbreak='↳ '
  " Use same highlight group as listchars for showbreak
endif

" Powerline
" ---------
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set guifont=Liberation\ Mono\ for\ Powerline\ 10
