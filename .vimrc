set nocompatible	"be improved, required
filetype off		"required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" config vim-go
Plugin 'fatih/vim-go'
" config YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" config UltiSnips
Plugin 'SirVer/ultisnips'
" config Powerline status
Plugin 'Lokaltog/vim-powerline'
call vundle#end()

filetype plugin indent on	"required
syntax enable
syntax on
set laststatus=2

set nu
set cursorline
set hlsearch

" 设置缩进
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 设置代码折叠
set foldmethod=syntax
set nofoldenable    " 启动vim时关闭折叠

"Set vim-monokai color scheme
colorscheme monokai
set t_Co=256
" set background=dark

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


" Config vim-plugin
call plug#begin('~/.vim/plugged')


call plug#end()

