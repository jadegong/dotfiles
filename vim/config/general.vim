
filetype plugin indent on	" required
syntax enable
syntax on
set laststatus=2
set ruler
set cmdheight=1
set showtabline=1
" 设置代码折叠
set foldenable
" set foldmethod=syntax
set foldmethod=manual
set foldlevel=100    " 启动vim时关闭折叠
" Auto read file if changed
set autoread

" 设置对齐
set ai " 自动对齐
set si
set smarttab
set wrap
set lbr
set tw=0
" No sound on errors.
set noerrorbells
set novisualbell
" smart backspace
set backspace=start,indent,eol
" set clipboard=unnamedplus
" set selection=inclusive " gvim设置multiple-cursors
set nu
set relativenumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
set scrolloff=2
set cursorline
set hlsearch
set incsearch
" 设置禁止光标闪烁
set gcr+=a:blinkon0
" set swapfile dir
set directory=/tmp

" 设置编码
set encoding=utf-8
set fileencodings=utf-8,gbk,default,latin1

" 设置缩进
set cindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" config vim updatetime
set updatetime=250

" config ttimeout after Esc keys
set ttimeoutlen=50

set t_Co=256

" set  molokai color scheme
" let g:molokai_original = 1
" let g:rehash256 = 1
" let g:neodark#background='gray'
" let g:neodark#user_256color=1
colorscheme onedark

