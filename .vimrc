" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'ajh17/VimCompletesMe'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
call plug#end()

" Preferences for ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'

" Preferences for vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Preferences for NERDcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Preferences for ale
let g:ale_fixers = {
      \   'javascript': ['eslint'],
      \}

" Preferences for NERDTree
map <C-n> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

" Preference for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" General
set autoindent          " Automatically indent
set expandtab           " Spaces, not tabs
set hls                 " Search highlighting
set ignorecase          " Case insensitive search
set laststatus=2        " Always show status line
set linebreak           " Break lines
set nobackup            " No backup files
set noshowmode          " Hide status bar
set noswapfile          " No swap files
set nowritebackup       " Only in case you don't want a backup file while editing
set number              " Enable line numbers by default
set shiftwidth=2        " Indent 2 spaces
set smartcase           " Allow sensitive search when at least one capital
set tabstop=2           " Tab spacing
set t_Co=256            " Enable 256-colors
set encoding=utf-8
set fileencoding=utf-8
syntax on

" Put these lines at the very end of your vimrc file.
"
" " Load all plugins now.
" " Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" " Load all of the helptags now, after plugins have been loaded.
" " All messages and errors will be ignored.
silent! helptags ALL
