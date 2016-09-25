set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"icons
Plugin 'ryanoasis/vim-devicons'

"Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Syntax highlighting
Plugin 'flazz/vim-colorschemes'
Plugin 'slashmili/alchemist.vim'
Plugin 'othree/yajs.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jelera/vim-javascript-syntax'

" Indenting
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Chiel92/vim-autoformat'

" Closing brackets
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround.git'

" autocomplete
Bundle "Valloric/YouCompleteMe"
Bundle "marijnh/tern_for_vim"

" nerd tree
Bundle "scrooloose/syntastic"
Plugin 'scrooloose/nerdtree'

"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'airblade/vim-gitgutter'

" multi cursor
Bundle "terryma/vim-multiple-cursors"

"markdown preview
Plugin 'JamshedVesuna/vim-markdown-preview'

Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
syntax enable
set background=dark
colorscheme hybrid

set expandtab
set shiftwidth=2
set softtabstop=2
set number

" syntastic cnfig
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set encoding=utf8
let g:airline_powerline_fonts = 1

let g:javascript_plugin_flow = 1
let g:syntastic_javascript_checkers = ['eslint']
" show any linting errors immediately
let g:syntastic_check_on_open = 1

" Make update faster to see git notifications
set updatetime=250

if !has('nvim')
  set ttymouse=xterm2
endif

"auto close nerdtree
let NERDTreeQuitOnOpen=1

" Markdown should use grip - github flavor
let vim_markdown_preview_github=1

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"allow escape by hitting j then k in insert mode
inoremap jk <esc>

" Use the mac clipboard with vim
set clipboard=unnamed

" Auto open nerdtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Shortcut for openening and closing nerdtree with ctrl N
map <C-n> :NERDTreeToggle<CR>

" multicursor mapping
let g:multi_cursor_start_key='<C-m>'
