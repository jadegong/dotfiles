let mapleader="\<space>"

" 设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<CR>
map <silent> <leader>ee :e ~/.vimrc<cr>
nnoremap <silent><leader>qq :qa<CR>

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
" 设置代码折叠
set foldenable
" set foldmethod=syntax
set foldmethod=manual
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
" set clipboard=unnamedplus
" set selection=inclusive " gvim设置multiple-cursors
set nu
set relativenumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
set scrolloff=10
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

" config keymaps
" 系统剪切板相关按键配置
nnoremap <silent><leader>y "+y
vnoremap <silent><leader>y "+y
nnoremap <silent><leader>p "+p
vnoremap <silent><leader>p "+p
" File keybindings
" 保存文件快捷键
nnoremap <silent><leader>fs :w<CR>
" 保存所有文件快捷键
nnoremap <silent><leader>fS :wa<CR>
" 使用fzf查找文件
nnoremap <silent><leader>ff :Files<CR>
" 使用fzf查看git文件
nnoremap <silent><leader>fg :GFiles<CR>
" 使用fzf查找历史文件
nnoremap <silent><leader>fr :History<CR>
" end config file keymaps
" Search keymaps
" 在fzf中使用rg查找文本，本方法为自定义方法，见line 420
nnoremap <silent><leader>sr :RG<CR>
" 在fzf中使用ag查找文本
nnoremap <silent><leader>sa :Ag<CR>


"set tabline=%!MyTabLine()
" show tabline function
" function MyTabLine()
  " let s = ''
  " for i in range(tabpagenr('$'))
    " if i + 1 == tabpagenr()
      " let s .= '%#TabLineSel#'
    " else
      " let s .= '%#TabLine#'
    " endif
    " let s .= '%' . (i + 1) . 'T'
    " let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  " endfor
  " let s .= '%#TabLineFill#%T'
  " if tabpagenr('$') > 1
    " let s .= '%=%#TabLine#%999Xclose'
  " endif
  " return s
" endfunction
" " each tab label function
" function MyTabLabel(n)
  " let l = ''
  " let l .= a:n . ':'
  " let buflist = tabpagebuflist(a:n)
  " let winnr = tabpagewinnr(a:n)
  " let l .= bufname(buflist[winnr - 1])
  " return l
" endfunction
" 标签页快捷键(目前标签页用得比较少，多使用window和buffer快捷键了)
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-S-Left> :tabm -1<CR>
nnoremap <M-S-h> :tabm -1<CR>
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-l> :tabnext<CR>
nnoremap <M-S-Right> :tabm +1<CR>
nnoremap <M-S-l> :tabm +1<CR>
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
nnoremap <M-S-1> :tabm 0<CR>
nnoremap <M-S-2> :tabm 1<CR>
nnoremap <M-S-3> :tabm 2<CR>
nnoremap <M-S-4> :tabm 3<CR>
nnoremap <M-S-5> :tabm 4<CR>
nnoremap <M-S-6> :tabm 5<CR>
nnoremap <M-S-7> :tabm 6<CR>
nnoremap <M-S-8> :tabm 7<CR>
nnoremap <M-S-9> :tabm 8<CR>
nnoremap <M-S-0> :tabm 9<CR>
" end tab config

" window keybindings
" 光标移动至左边window
nnoremap <silent><leader>wh <C-w>h
" 光标移动至右边window
nnoremap <silent><leader>wj <C-w>j
" 光标移动至上边window
nnoremap <silent><leader>wk <C-w>k
" 光标移动至下边window
nnoremap <silent><leader>wl <C-w>l
" 按照当前布局所有window高宽平分
nnoremap <silent><leader>w= <C-w>=
" 水平分割新建一个window
nnoremap <silent><leader>ws :split<CR>
" 垂直分割新建一个window
nnoremap <silent><leader>wv :vsplit<CR>
" Delete current window(不回收当前文件buffer)
nnoremap <silent><leader>wd <C-w>q
" Delete Buffer and window
nnoremap <silent><leader>wx :bd<CR> 
" nnoremap <silent><leader>wh <C-w>h
" End window keybindings

" buffer keybindings
" 使用fzf查找当前所有buffers
nnoremap <silent><leader>bb :Buffers<CR>
" 打开上一个buffer的内容
nnoremap <silent><leader>bp :bp<CR>
" 打开下一个buffer的内容
nnoremap <silent><leader>bn :bn<CR>
" Delete buffer winout close window
nnoremap <silent><leader>bd :ene<CR>:bw #<CR>
" Delete Buffer and window, 与<leader>wx 效果相同；
nnoremap <silent><leader>bx :bd<CR>
" End buffer keybindings

" vue config
autocmd FileType vue syntax sync fromstart
let g:vue_pre_processors = ['scss']
" vue plugin
" let g:vim_vue_plugin_load_full_syntax = 1
" let g:vim_vue_plugin_use_scss = 1
" let g:vim_vue_plugin_use_foldexpr = 1
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css', 'less', 'scss'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 1,
      \'debug': 0,
      \}


" coc configurations
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-markdown-preview-enhanced', 'coc-snippets', 'coc-vetur', 'coc-vimlsp']
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
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" inoremap <silent><expr> <TAB>
      " \ pumvisible() ? "\<C-n>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
  " let col = col('.') - 1
  " return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rr <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>=  <Plug>(coc-format-selected)
nmap <leader>=  <Plug>(coc-format-selected)
" Markdown preview enhanced settings
nmap <leader>mp  :CocCommand markdown-preview-enhanced.openPreview<cr>
nmap <leader>ms  :CocCommand markdown-preview-enhanced.syncPreview<cr>
nmap <leader>mr  :CocCommand markdown-preview-enhanced.runCodeChunk<cr>
nmap <leader>ma  :CocCommand markdown-preview-enhanced.runAllCodeChunkS<cr>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Apply AutoFix to problem on the current line.
" error fix
nmap <leader>ef  <Plug>(coc-fix-current)

" end coc configurations

" config vim updatetime
set updatetime=250

" config vim minimap
" let g:minimap_toggle='<F4>' "F4 toggle minimap

" config js files
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Js and ts file syntax.
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" set  molokai color scheme
" let g:molokai_original = 1
" let g:rehash256 = 1
set t_Co=256
" let g:neodark#background='gray'
" let g:neodark#user_256color=1
colorscheme codedark

" config statusline
"let g:Powerline_symbols = 'fancy'
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='codedark'
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
" map <F3> :TagbarToggle<CR>

"NERDTree config
nmap <silent><leader>ft :NERDTreeTabsToggle<CR><C-w>=
" 关闭vim时，如果没有打开的文件，关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" show line numbers
let g:NERDTreeShowLineNumbers=1
" Show hidden file.
let g:NERDTreeShowHidden=1
" Change the arrow
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeWinSize = 45
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
" NERDTree keybindings
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenPreviewSplit = 'gs'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeMapOpenPreviewVSplit = 'gv'

" End NERDTree config

" vim signify configurations
set signcolumn=yes

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
nmap <silent><leader>; <plug>NERDCommenterToggle
vmap <silent><leader>; <plug>NERDCommenterToggle
" imap <silent><leader>\ <Esc><plug>NERDCommenterToggle :startinsert<CR>

" vim-go settings
" let g:go_fmt_command="goimports"
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1

" vim-gotests

" fzf configurations
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.4 } }
" end fzf configurations

" vimtex configurations
let g:vimtex_view_method = 'zathura'
" End vimtex configurations
