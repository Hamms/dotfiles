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
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'json', 'markdown'] }
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'ruby-formatter/rufo-vim'
"Plug 'tonchis/vim-to-github'
"Plug 'tell-k/vim-autopep8'

" Initialize vim-plug
call plug#end()

syntax on
let g:loaded_syntastic_cucumber_cucumber_checker=''
let g:syntastic_javascript_checkers = ['eslint']
filetype plugin on

" Configure buftabline plugin
let g:buftabline_numbers = 1
let g:buftabline_separators = 1

" Configure vim-prettier plugin
" The default settings for the plugin differ from prettier's defaults, so set
" them back to match.
" See https://github.com/prettier/vim-prettier#overwrite-default-prettier-configuration
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'none'

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

" Use bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" save commonly-used regexes here
source ~/.regexlist.vim

" Adjust timeout lengths; see https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000
set ttimeoutlen=1

" Don't ever actually HIDE buftabline tabs
highlight link BufTabLineActive BufTabLineHidden
