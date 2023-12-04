set nocompatible
filetype on
set number
set relativenumber
set cursorline
syntax on

" START PLUGIN
call plug#begin()

" Other Plugins
Plug 'itchyny/lightline.vim'

" Theme 
Plug 'morhetz/gruvbox'
Plug 'blueshirts/darcula'

" END PLUGIN
call plug#end()

" Lightline Settings
set laststatus=2
set noshowmode " Do not show original mode indicator below lightline

" Setting theme
colorscheme darcula
