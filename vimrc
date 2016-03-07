set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Bundle 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
Bundle "motus/pig.vim"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <F5> :GundoToggle<CR>

set hlsearch

set t_Co=256
set showcmd
set number
syntax on
set showmatch           " Show matching brackets.

" Toggle paste mode indentation with F2
set pastetoggle=<F2>
" Toggle line numbers with F3
nmap <F3> :set invnumber<CR>

set nowrap
set textwidth=0
set wrapmargin=0

color symfony

" Remove all trailing whitespace when saving
" " See http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * :%s/\s\+$//e

" Show the function name when pressing f
function! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfunction
map F :call ShowFuncName() <CR>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set splitbelow
set splitright

set laststatus=2
set ttimeoutlen=50

set title
set visualbell
set noerrorbells

set clipboard=unnamedplus

set wildmode=longest,list
