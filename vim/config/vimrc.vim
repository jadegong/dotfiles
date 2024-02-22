" https://github.com/jadegong
" Created By: jadegong

" Runtime and Plugins
" ===

if &compatible
	" vint: -ProhibitSetNoCompatible
	set nocompatible
	" vint: +ProhibitSetNoCompatible
endif

" Set main configuration directory as parent directory
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

function! s:source_file(path, ...)
	" Source user configuration files with set/global sensitivity
	let use_global = get(a:000, 0, ! has('vim_starting'))
	let abspath = resolve($VIM_PATH . '/' . a:path)
	if ! use_global
		execute 'source' fnameescape(abspath)
		return
	endif

	let tempfile = tempname()
	let content = map(readfile(abspath),
		\ "substitute(v:val, '^\\W*\\zsset\\ze\\W', 'setglobal', '')")
	try
		call writefile(content, tempfile)
		execute printf('source %s', fnameescape(tempfile))
	finally
		if filereadable(tempfile)
			call delete(tempfile)
		endif
	endtry
endfunction


" Initialize startup settings
if has('vim_starting')
	" Use spacebar as leader and ; as secondary-leader
	" Required before loading plugins!
    let g:mapleader="\<Space>"

	" Release keymappings prefixes, evict entirely for use of plug-ins.
	nnoremap <Space>  <Nop>
	xnoremap <Space>  <Nop>
	" nnoremap ,        <Nop>
	" xnoremap ,        <Nop>
	" nnoremap ;        <Nop>
	" xnoremap ;        <Nop>

	" Vim only, Linux terminal settings
	" if ! has('nvim') && ! has('gui_running') && ! has('win32') && ! has('win64')
		" call s:source_file('config/terminal.vim')
	" endif
endif

if filereadable(expand($VIM_PATH . '/config/load_plugins.vim'))
  call s:source_file('config/load_plugins.vim')
endif

call s:source_file('config/general.vim')
call s:source_file('config/plugins.vim')
call s:source_file('config/filetypes.vim')
call s:source_file('config/mappings.vim')

" load plugins config files
call s:source_file('config/plugins/coc.vim')
call s:source_file('config/plugins/fzf.vim')
call s:source_file('config/plugins/gigutter.vim')
call s:source_file('config/plugins/nerdtree.vim')
call s:source_file('config/plugins/others.vim')
call s:source_file('config/plugins/mappings.vim')
call s:source_file('config/plugins/which_key.vim')

