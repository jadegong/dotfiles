" 对不同文件类型进行不同的缩进设置
au FileType html,python,css,vue setl shiftwidth=4
au FileType html,python,css,vue setl tabstop=4
au FileType html,python,css,vue setl softtabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
au FileType java,php setl softtabstop=4

" rainbow configurations
" let g:rainbow_active = 1

" config vim minimap
" let g:minimap_toggle='<F4>' "F4 toggle minimap

" Js and ts file syntax.
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

