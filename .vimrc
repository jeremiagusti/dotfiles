"""" Enable Vundle: vim plugin manager
" required before Vundle initialization
" set nocompatible        " disable compatibility mode with vi
" filetype off            " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'wting/rust.vim' " enable syntax highlighting for rust
" call vundle#end()
"



call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'sinetoami/lightline-hunks'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'

call plug#end()

"""" Basic Behavior
set number              " show line numbers
set relativenumber      " relative number
" set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
set noswapfile
set list
set listchars=tab:>-


"""" Lightline Configs
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk

nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>

" Tabs 
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

" Save with Ctrl + S
nnoremap <C-s> :w<CR>

"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
colorscheme gruvbox      " good colorschemes: murphy, slate, molokai, badwolf, solarized
set bg=dark

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on

"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>


"""" Miscellaneous settings that might be worth enabling

set cursorline         " highlight current line
"set background=dark    " configure Vim to use brighter colors
set autoread           " autoreload the file in Vim if it has been changed outside of Vim
