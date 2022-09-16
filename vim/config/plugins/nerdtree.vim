"NERDTree config
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

"nerdcommenter config
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

