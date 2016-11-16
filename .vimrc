" 配置自动载入，无需重启vim
" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc 
" 设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<cr>
" 设置快速编辑.vimrc快捷键
map <silent> <leader>ee :e ~/.vimrc<cr>
" end config

set nocompatible	"be improved, required

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Config vim-plugin
call plug#begin('~/.vim/plugged')
" Plugin seoul256 color
Plug 'junegunn/seoul256.vim'

call plug#end()

filetype plugin indent on	" required
syntax enable
syntax on
set laststatus=2
set ruler
set cmdheight=1
" set showtabline=2
" set tabline+=%f


set nu
set cursorline
set hlsearch
set incsearch
" 设置禁止光标闪烁
set gcr+=a:blinkon0
" 设置鼠标
" set mouse=a

" 设置编码
set encoding=utf-8
set fileencodings=utf-8,gbk,default,latin1

" 设置缩进
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" 对不同文件类型进行不同的缩进设置
au FileType html,python,vim,javascript,css setl shiftwidth=2
au FileType html,python,vim,javascript,css setl tabstop=2
au FileType html,python,vim,javascript,css setl softtabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
au FileType java,php setl softtabstop=4

" 设置代码折叠
set foldenable
set foldmethod=syntax
set foldlevel=100    " 启动vim时关闭折叠

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

"Set molokai color scheme
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
let g:neodark#background='gray'
let g:neodark#use_256color=1
colorscheme neodark
" set background=dark
let g:Powerline_symbols = 'fancy'

" tagbar config
map <F3> :TagbarToggle<cr>

" NERDTree 配置
map <F2> :NERDTreeTabsToggle<cr>
" 关闭vim时, 如果没有文件打开了，自动关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 自动打开NERDTree
" autocmd vimenter * NERDTree
" Change the arrow
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" NERDTree git symbol
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" 标签页快捷键
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>
" inoremap <C-tab>   <Esc>:tabnext<CR>

nnoremap <C-1> 1gt
nnoremap <C-2> 2gt
nnoremap <C-3> 3gt
nnoremap <C-4> 4gt
nnoremap <C-5> 5gt
nnoremap <C-6> 6gt
nnoremap <C-7> 7gt
nnoremap <C-8> 8gt
nnoremap <C-9> 9gt
nnoremap <C-0> :tablast<CR>


" YCM settings
" 通过下箭头选择下一个提示，上箭头同样，Ctrl+Space触发提示
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_key_invoke_completion='<C-Space>'

" UltiSnips settings
" 通过tab展开
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-go settings
let g:go_fmt_command="goimports"



