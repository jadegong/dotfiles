" gitgutter
nnoremap <silent><leader>gt :GitGutterToggle<CR>
nnoremap <silent><leader>gbt :GitGutterBufferToggle<CR>
nnoremap <silent><leader>gSt :GitGutterSignsToggle<CR>
nnoremap <silent><leader>ght :GitGutterLineHighlightsToggle<CR>
nnoremap <silent><leader>gn <Plug>(GitGutterNextHunk)
nnoremap <silent><leader>gN <Plug>(GitGutterPrevHunk)
nnoremap <silent><leader>gs <Plug>(GitGutterStageHunk)
nnoremap <silent><leader>gu <Plug>(GitGutterUndoHunk)
nnoremap <silent><leader>gp <Plug>(GitGutterPreviewHunk)
nnoremap <silent><leader>gd :GitGutterDiffOrig<CR>

" NERDTree
nmap <silent><leader>ft :NERDTreeTabsToggle<CR><C-w>=

" set nerdcommenter keybindings.
nmap <silent><leader>; <plug>NERDCommenterToggle
vmap <silent><leader>; <plug>NERDCommenterToggle
" imap <silent><leader>\ <Esc><plug>NERDCommenterToggle :startinsert<CR>

" coc
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

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gg :0<cr>

" Symbol renaming.
nmap <leader>mr <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>m=  <Plug>(coc-format-selected)
nmap <leader>m=  :Format<CR>
" Markdown preview enhanced settings
nmap <leader>mmp  :CocCommand markdown-preview-enhanced.openPreview<cr>
nmap <leader>mms  :CocCommand markdown-preview-enhanced.syncPreview<cr>
nmap <leader>mmr  :CocCommand markdown-preview-enhanced.runCodeChunk<cr>
nmap <leader>mma  :CocCommand markdown-preview-enhanced.runAllCodeChunkS<cr>

" Apply AutoFix to problem on the current line.
" error fix
nmap <leader>et  <Plug>(coc-config-diagnostic-enable)
nmap <leader>ef  <Plug>(coc-fix-current)
nmap <leader>en  <Plug>(coc-diagnostic-next-error)
nmap <leader>ep  <Plug>(coc-diagnostic-prev-error)
nmap <leader>el  :CocDiagnostics<cr>

" fold
nnoremap <silent><leader>zo :Fold<CR>

" end coc
