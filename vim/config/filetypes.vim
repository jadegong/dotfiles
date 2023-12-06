" 对不同文件类型进行不同的缩进设置
au FileType json,html,css,vue setl shiftwidth=2
au FileType json,html,css,vue setl tabstop=2
au FileType json,html,css,vue setl softtabstop=2
au FileType java,python,php setl shiftwidth=4
au FileType java,python,php setl tabstop=4
au FileType java,python,php setl softtabstop=4

" rainbow configurations
" let g:rainbow_active = 1

" config vim minimap
" let g:minimap_toggle='<F4>' "F4 toggle minimap

" Js and ts file syntax.
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

