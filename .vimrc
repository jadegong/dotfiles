let mapleader=";"
" 配置自动载入，无需重启vim
" 配置文件.vimrc更改后自动重新载入使设置生效
" autocmd! bufwritepost .vimrc source ~/.vimrc 
" 设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<CR>
" 设置快速编辑.vimrc快捷键
map <silent> <leader>ee :e ~/.vimrc<cr>
" end config

set nocompatible	"be improved, required

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on	" required
syntax enable
syntax on
set laststatus=2
set ruler
set cmdheight=1

set nu
set cursorline
set hlsearch
set incsearch
" 设置禁止光标闪烁
set gcr+=a:blinkon0


" 设置编码
set encoding=utf-8
set fileencodings=utf-8,gbk,default,latin1

" 设置缩进
set cindent
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
set clipboard=unnamedplus
set selection=inclusive " gvim设置multiple-cursors

" config keymaps
nnoremap <silent><leader>y "+yy
vnoremap <silent><leader>y "+y
nnoremap <silent><leader>p "+p
vnoremap <silent><leader>p "+p

" set  molokai color scheme
" let g:molokai_original = 1
" let g:rehash256 = 1
set t_Co=256
let g:neodark#background='gray'
let g:neodark#user_256color=1
colorscheme neodark

let g:Powerline_symbols = 'fancy'

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

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
" end vim-syntastic

"tagbar config
map <F3> :TagbarToggle<CR>

"NERDTree config
map <F2> :NERDTreeTabsToggle<CR>
" 关闭vim时，如果没有打开的文件，关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Change the arrow
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
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
nnoremap <M-0> :tablast<CR>

" YCM settings
" 通过下箭头选择下一个提示，上箭头同样，Ctrl+Space触发提示
"let g:ycm_key_list_select_completion=['<Down>']
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_key_invoke_completion='<C-Space>'
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"  "回车即选中当前项
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 菜单
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
" highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
"set completeopt=longest,menu
"let g:yvm_add_preview_to_completeopt=1
"let g:ycm_autoclose_preview_window_after_insertion=1 "离开插入模式后自动关闭预览窗口
"let g:ycm_complete_in_comments=1
"let g:ycm_complete_in_strings=1
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_min_num_of_chars_for_completion=1
"let g:ycm_cache_omnifunc=0
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_semantic_triggers =  {
  "\ 'c': ['->', '.'],
  "\ 'cpp': ['->', '.', '::'],
  "\ 'php': ['->', '::'],
  "\ 'cs,java,javascript,typescript,python,vb,elixir,go' : ['.'],
  "\}

" Config neocomplete settings
set completeopt-=preview  " Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1 " Use neocomplete.
let g:neocomplete#enable_smart_case = 1 " Use smartcase.
let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
let g:neocomplcache_enable_fuzzy_completion = 1               " 开启模糊匹配
let g:neocomplcache_fuzzy_completion_start_length = 3         " 3个字母后开启模糊匹配
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "\<CR>" )
  " For no inserting <CR> key.
endfunction
" <Down>/<Up>: completion.
inoremap <expr><Down>  pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><Up>  pumvisible() ? "\<C-p>" : "\<Up>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" UltiSnips settings
" 通过tab展开
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"nerdcommenter config
nmap <C-\> <plug>NERDCommenterToggle
vmap <C-\> <plug>NERDCommenterToggle
imap <C-\> <Esc><plug>NERDCommenterToggle :startinsert<CR>

" vim-go settings
let g:go_fmt_command="goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

