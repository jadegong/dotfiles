let g:which_key_vertical = 0
let g:which_key_centered = 0
" let g:which_key_position = 'botright'

let g:which_key_map = {}

let g:which_key_map.q = {
      \ 'name' : '+quit'                ,
      \ 'q' : 'quit-vim'                ,
      \ }

let g:which_key_map.e = {
      \ 'name' : '+edit/error'          ,
      \ 'e' : 'edit-vimrc'              ,
      \ 'f' : 'error-coc-fix-current'   ,
      \ }

" file actions
let g:which_key_map.f = {
      \ 'name' : '+files'               ,
      \ 's' : 'file-Save'               ,
      \ 'S' : 'file-Save-All'           ,
      \ 'f' : 'file-Find'               ,
      \ 'g' : 'file-Gfiles'             ,
      \ 'r' : 'file-History'            ,
      \ 't' : 'file-manager'            ,
      \ }

" buffer actions
let g:which_key_map.b = {
      \ 'name' : '+buffer'                      ,
      \ 'b' : 'buffer-list'                     ,
      \ 'p' : 'buffer-previous'                 ,
      \ 'n' : 'buffer-next'                     ,
      \ 'd' : 'buffer-delete-current'           ,
      \ 'D' : 'buffer-delete-all-others'        ,
      \ 'x' : 'buffer-and-window-delete'        ,
      \ }

" window actions
let g:which_key_map.w = {
      \ 'name' : '+window'                      ,
      \ 'h' : 'to-left-window'                  ,
      \ 'j' : 'to-down-window'                  ,
      \ 'k' : 'to-up-window'                    ,
      \ 'l' : 'to-right-window'                 ,
      \ 'H' : 'window-move-far-left'            ,
      \ 'J' : 'window-move-far-down'            ,
      \ 'K' : 'window-move-far-up'              ,
      \ 'L' : 'window-move-far-right'           ,
      \ '=' : 'window-equally-devided'          ,
      \ 's' : 'window-split-horizontal'         ,
      \ 'v' : 'window-split-verticle'           ,
      \ 'd' : 'window-close-current'            ,
      \ 'x' : 'window-and-buffer-delete'        ,
      \ 'o' : 'window-close-all-others'         ,
      \ }
" search actions
let g:which_key_map.s = {
      \ 'name' : '+search/source'               ,
      \ 's' : 'source-vimrc'                    ,
      \ 'r' : 'search-ripgrep'                  ,
      \ 'a' : 'search-silver-searcher'          ,
      \ }
" quickfix/clearfix
let g:which_key_map.c = {
      \ 'name' : '+quickfix'                    ,
      \ 'o' : 'quickfix-open'                   ,
      \ 'q' : 'quickfix-quit'                   ,
      \ 'p' : 'quickfix-previous'               ,
      \ 'n' : 'quickfix-next'                   ,
      \ }
" language
let g:which_key_map.m = {
      \ 'name' : '+language'                            ,
      \ 'r' : 'coc-rename'                              ,
      \ '=' : 'coc-format'                              ,
      \ 'm' : {
          \ 'name': '+markdown',
          \ 'p' : 'markdown-open-preview'               ,
          \ 's' : 'markdown-sync-preview'               ,
          \ 'r' : 'makrdown-run-codechunk'              ,
          \ 'a' : 'markdown-run-all-codechunks'         ,
          \ },
      \ }
" Comment
let g:which_key_map[';'] = 'NERDCommenterToggle'
" window jump by number
let g:which_key_map['1'] = 'Window 1'
let g:which_key_map['2'] = 'Window 2'
let g:which_key_map['3'] = 'Window 3'
let g:which_key_map['4'] = 'Window 4'
let g:which_key_map['5'] = 'Window 5'
let g:which_key_map['6'] = 'Window 6'
let g:which_key_map['7'] = 'Window 7'
let g:which_key_map['8'] = 'Window 8'
let g:which_key_map['9'] = 'Window 9'

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>


let g:which_key_map_g = {}
let g:which_key_map_g.d = 'coc-definition'
let g:which_key_map_g.y = 'coc-type-definition'
let g:which_key_map_g.i = 'coc-implementation'
let g:which_key_map_g.r = 'coc-references'
let g:which_key_map_g.g = 'goto-top'
let g:which_key_map_g.k = 'goto-screen-prevline'
let g:which_key_map_g.j = 'goto-screen-nextline'

" call which_key#register('g', "g:which_key_map_g")
" nnoremap <silent> g :<c-u>WhichKey 'g'<CR>
