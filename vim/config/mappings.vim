" 设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<CR>
map <silent> <leader>ee :e ~/.vimrc<cr>
nnoremap <silent><leader>qq :qa<CR>

" config keymaps
nnoremap <silent><BS> :nohl<CR>
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
" 光标移动至下边window
nnoremap <silent><leader>wj <C-w>j
" 光标移动至上边window
nnoremap <silent><leader>wk <C-w>k
" 光标移动至右边window
nnoremap <silent><leader>wl <C-w>l
" 当前window移动至最左边，高度撑满屏幕
nnoremap <silent><leader>wH <C-w>H
" 当前window移动至最下边，高度撑满屏幕
nnoremap <silent><leader>wJ <C-w>J
" 当前window移动至最上边，高度撑满屏幕
nnoremap <silent><leader>wK <C-w>K
" 当前window移动至最右边，高度撑满屏幕
nnoremap <silent><leader>wL <C-w>L
" 按照当前布局所有window高宽平分
nnoremap <silent><leader>w= <C-w>=
" 按照当前布局所有window高宽平分
nnoremap <silent><leader>w= <C-w>=
" 水平分割新建一个window
nnoremap <silent><leader>ws :split<CR>
" 垂直分割新建一个window
nnoremap <silent><leader>wv :vsplit<CR>
" Delete current window(不回收当前文件buffer) :clo[se], <C-w>c
nnoremap <silent><leader>wd <C-w>q
" Delete Buffer and window
nnoremap <silent><leader>wx :bd<CR> 
" 关闭当前window外的所有window :on[ly]
nnoremap <silent><leader>wo <C-w>o
" End window keybindings

" buffer keybindings
" buffer被改变过也可以直接切换到其他buffer
set hidden
" 使用fzf查找当前所有buffers
nnoremap <silent><leader>bb :Buffers<CR>
" 打开上一个buffer的内容
nnoremap <silent><leader>bp :bp<CR>
" 打开下一个buffer的内容
nnoremap <silent><leader>bn :bn<CR>
" Delete buffer winout close window
nnoremap <silent><leader>bd :Bclose<CR>
" Delete Buffer and window, 与<leader>wx 效果相同；
nnoremap <silent><leader>bx :bd<CR>
" End buffer keybindings

" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
  finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
  let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" Command ':Bclose' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != btarget
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)
" end self definition for :Bclose

