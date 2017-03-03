let mapleader=";"
" neovim config

" vim-plug config
call plug#begin('~/.config/nvim/plugged')
" theme
Plug 'KeitaNakamura/neodark.vim'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
" syntastic
Plug 'vim-syntastic/syntastic'
" deoplete
Plug 'Shougo/deoplete.nvim'
" auto pairs
Plug 'jiangmiao/auto-pairs'
" git gutter
Plug 'airblade/vim-gitgutter'
" vim multiple cursors
Plug 'terryma/vim-multiple-cursors'
" go
Plug 'fatih/vim-go'
call plug#end()

filetype plugin indent on
syntax enable
syntax on
let laststatus=2
set ruler
set nu
set relativenumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

set cmdheight=1
set showtabline=1
set scrolloff=15
set cursorline
set hlsearch
set incsearch
" 设置禁止光标闪烁
set gcr+=a:blinkon0
set directory=/tmp

" encoding
set encoding=utf-8
set fileencodings=utf-8,gbk,default,latin1

" indent
set cindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
" depend on file type
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType html,python,vim,javascript setl softtabstop=2
au FileType java,php,go,css setl shiftwidth=4
au FileType java,php,go,css setl tabstop=4
au FileType java,php,go,css setl softtabstop=4

" foldable
set foldenable
set foldmethod=syntax
set foldlevel=100

" align
set ai
set si
set smarttab
set wrap
set lbr
set tw=0

" no sound
set noerrorbells
set novisualbell

" smart backspace
set backspace=start,indent,eol
set clipboard=unnamedplus
set selection=inclusive
set updatetime=250

" shortcuts
" config keymaps
nnoremap <silent><leader>y "+yy
vnoremap <silent><leader>y "+y
nnoremap <silent><leader>p "+p
vnoremap <silent><leader>p "+p
" 标签页快捷键
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> 9gt
nnoremap <M-0> :tablast<CR><Paste>

" colorscheme
set t_Co=256
let g:neodark#background='gray'
let g:neodark#user_256color=1
colorscheme neodark

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts=1

" config vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_go_checkers = ['gofmt','gometalinter','gotype', 'govet']

let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'
" end vim-syntastic

"NERDTree config
map <F2> :NERDTreeTabsToggle<CR>
" 关闭vim时，如果没有打开的文件，关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Change the arrow
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
"NERDTree git symbol
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "*",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
\ }

"nerdcommenter config
nmap <C-\> <plug>NERDCommenterToggle
vmap <C-\> <plug>NERDCommenterToggle
imap <C-\> <Esc><plug>NERDCommenterToggle :startinsert<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" vim-go settings
let g:go_fmt_command="goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
