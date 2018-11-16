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
" Plug 'fholgado/minibufexpl.vim'
Plug 'ap/vim-buftabline'
Plug 'vim-syntastic/syntastic'
" post install (yarn install | npm install) then load plugin only for editing supported files.
" Options include: 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'json'] }
Plug 'tpope/vim-surround'

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

" Better-behaved tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
