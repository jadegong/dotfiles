let mapleader="\<space>"

" 设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<CR>
map <silent> <leader>ee :e ~/.vimrc<cr>

set nocompatible
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on	" required
syntax enable
syntax on
set laststatus=2
set ruler
set cmdheight=1
set showtabline=1
"set tabline=%!MyTabLine()
" show tabline function
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    let s .= '%' . (i + 1) . 'T'
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor
  let s .= '%#TabLineFill#%T'
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif
  return s
endfunction
" each tab label function
function MyTabLabel(n)
  let l = ''
  let l .= a:n . ':'
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let l .= bufname(buflist[winnr - 1])
  return l
endfunction
set nu
set relativenumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
set scrolloff=15
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
" 对不同文件类型进行不同的缩进设置
au FileType html,python,vim,javascript,css,vue setl shiftwidth=4
au FileType html,python,vim,javascript,css,vue setl tabstop=4
au FileType html,python,vim,javascript,css,vue setl softtabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
au FileType java,php setl softtabstop=4
autocmd FileType vue syntax sync fromstart
let g:vue_pre_processors = ['scss']

" coc configurations
" Set updatetime not so long (default to 4000ms) 
set updatetime=1000
" jsonc file
autocmd FileType json syntax match Comment +\/\/.\+$+
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" end coc configurations
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

" 标签页快捷键
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-l> :tabnext<CR>
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


" config vim updatetime
set updatetime=250

" config vim minimap
let g:minimap_toggle='<F4>' "F4 toggle minimap

" config js files
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Js and ts file syntax.
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" config jsbeautify
"map <C-M-f> :call JsBeautify()<CR>
" autocmd FileType javascript noremap <buffer>  <C-M-f> :call JsBeautify()<cr>
" for json
" autocmd FileType json noremap <buffer> <C-M-f> :call JsonBeautify()<cr>
" for jsx
" autocmd FileType jsx noremap <buffer> <C-M-f> :call JsxBeautify()<cr>
" for html
" autocmd FileType html noremap <buffer> <C-M-f> :call HtmlBeautify()<cr>
" for css or scss
" autocmd FileType css noremap <buffer> <C-M-f> :call CSSBeautify()<cr>
" visual mode
" autocmd FileType javascript vnoremap <buffer>  <C-M-f> :call RangeJsBeautify()<cr>
" autocmd FileType json vnoremap <buffer> <C-M-f> :call RangeJsonBeautify()<cr>
" autocmd FileType jsx vnoremap <buffer> <C-M-f> :call RangeJsxBeautify()<cr>
" autocmd FileType html vnoremap <buffer> <C-M-f> :call RangeHtmlBeautify()<cr>
" autocmd FileType css vnoremap <buffer> <C-M-f> :call RangeCSSBeautify()<cr>

" set  molokai color scheme
" let g:molokai_original = 1
" let g:rehash256 = 1
set t_Co=256
" let g:neodark#background='gray'
" let g:neodark#user_256color=1
colorscheme onedark

" config statusline
"let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='onedark'
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


"tagbar config
map <F3> :TagbarToggle<CR>


"NERDTree config
map <F2> :NERDTreeTabsToggle<CR>
" 关闭vim时，如果没有打开的文件，关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" show line numbers
let g:NERDTreeShowLineNumbers=1
" Show hidden file.
let g:NERDTreeShowHidden=1
" Change the arrow
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeWinSize = 35
"NERDTree git symbol
let g:NERDTreeGitStatusIndicatorMapCustom = {
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

" vim signify configurations
set signcolumn=yes

" YCM settings
" 通过下箭头选择下一个提示，上箭头同样，Ctrl+Space触发提示
"set completeopt-=preview
"let g:ycm_key_list_select_completion=['<Down>']
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_key_invoke_completion='<C-Space>'
"let g:ycm_completion_confirm_key='<enter>'
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"  "回车即选中当前项
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"set completeopt=longest,menu
"let g:yvm_add_preview_to_completeopt=1
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion=1 "离开插入模式后自动关闭预览窗口
"let g:ycm_complete_in_comments=1
"let g:ycm_complete_in_strings=1
"let g:ycm_min_num_of_chars_for_completion=3
"let g:ycm_cache_omnifunc=0
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_semantic_triggers =  {
  "\ 'c': ['->', '.'],
  "\ 'cpp': ['->', '.', '::'],
  "\ 'php': ['->', '::'],
  "\ 'cs,java,javascript,typescript,python,vb,elixir,go' : ['.'],
  "\}

" Config neocomplete settings
"set completeopt-=preview  " Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1 " Use neocomplete.
"let g:neocomplete#enable_smart_case = 1 " Use smartcase.
"let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
"let g:neocomplcache_enable_fuzzy_completion = 1               " 开启模糊匹配
"let g:neocomplcache_fuzzy_completion_start_length = 3         " 3个字母后开启模糊匹配
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"if !exists('g:neocomplete#keyword_patterns')
    "let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "\<CR>" )
  "" For no inserting <CR> key.
"endfunction
"" <Down>/<Up>: completion.
"inoremap <expr><Down>  pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr><Up>  pumvisible() ? "\<C-p>" : "\<Up>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" UltiSnips settings
" 通过tab展开
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"nerdcommenter config
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" set keybindings.
nmap <silent><leader>\ <plug>NERDCommenterToggle
vmap <silent><leader>\ <plug>NERDCommenterToggle
" imap <silent><leader>\ <Esc><plug>NERDCommenterToggle :startinsert<CR>

" vim-go settings
" let g:go_fmt_command="goimports"
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1

" vim-gotests
