" Use vim-plug to manage plugins
call plug#begin('~/.vim/plugged')
" let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'
" config vim-go
Plug 'fatih/vim-go'
" Plug 'buoto/gotests-vim' " vim gotests
" config neocomplete
" Plug 'Shougo/neocomplete.vim'
" config YouCompleteMe
" Plug 'Valloric/YouCompleteMe'
" config UltiSnips
Plug 'SirVer/ultisnips'

" js plugins
" jsbeautify
" Plug 'maksimr/vim-jsbeautify'
" improved indentation and syntax for js files
" Plug 'pangloss/vim-javascript'
" Syntax for typescript files.
" Plug 'leafgarland/typescript-vim'
" Plug 'maxmellon/vim-jsx-pretty'
" config airline instead to display status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" config NERDtree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs' "show NERDTree 1n all tabs
Plug 'Xuyuanp/nerdtree-git-plugin' "show git infos in NERDTree
" Config vim gitgutter
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
" Config minimap
" Plug 'severin-lemaignan/vim-minimap'
" config auto-pairs
Plug 'jiangmiao/auto-pairs'
" config rainbow brackets
" Plug 'frazrepo/vim-rainbow'
" tagbar
" Plug 'majutsushi/tagbar'
" piv: php
" Plug 'spf13/PIV'
" neodark scheme
Plug 'joshdick/onedark.vim'
" vim-code-dark scheme
" Plug 'tomasiser/vim-code-dark'
" icons
Plug 'ryanoasis/vim-devicons'
" NERDTree highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" vim-snippets
Plug 'honza/vim-snippets'
" vim syntastic
" Plug 'vim-syntastic/syntastic'
" vim nerdcomment
Plug 'scrooloose/nerdcommenter'
" vim multiple cursors
" Plug 'terryma/vim-multiple-cursors'
" vim indentLine
Plug 'Yggdroot/indentLine'
" coc nvim auto complete
Plug 'neoclide/coc.nvim'
" vim jsonc
" Plug 'kevinoid/vim-jsonc'
" vim-vue
" Plug 'posva/vim-vue'
" Plug 'leafOfTree/vim-vue-plugin'

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" vimtex
Plug 'lervag/vimtex'
" which key
Plug 'liuchengxu/vim-which-key'

call plug#end()


