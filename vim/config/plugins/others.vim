" config statusline
"let g:Powerline_symbols = 'fancy'
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1

" vim signify configurations
set signcolumn=yes

" UltiSnips settings
" 通过tab展开
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vimtex configurations
let g:vimtex_view_method = 'zathura'
" End vimtex configurations
