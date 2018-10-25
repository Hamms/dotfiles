" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Configure vim-plug
call plug#begin('~/.vim/plugged')

" Load plugins
" Run :PlugInstall to install new plugins
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-buftabline'

" Initialize vim-plug
call plug#end()

" Configure buftabline plugin
let g:buftabline_numbers = 1
let g:buftabline_separators = 1

" OH MY GOD YOU CAN ELIMINATE SWAPFILES
set nobackup
set noswapfile

" Enable the mouse
set ttymouse=xterm2
set mouse=a

" Misc visuals
set nowrap
set novisualbell
set noerrorbells
set background=dark

" Show relative line numbers
set relativenumber
set numberwidth=4
