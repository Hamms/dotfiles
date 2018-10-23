" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Configure vim-plug
call plug#begin('~/.vim/plugged')

" Install plugins
Plug 'scrooloose/nerdcommenter'

" Initialize vim-plug
call plug#end()

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
set number
set relativenumber
set numberwidth=4
