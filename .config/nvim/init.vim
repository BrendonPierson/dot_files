call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

Plug 'valloric/youcompleteme'
Plug 'marijnh/tern_for_vim'

Plug 'flazz/vim-colorschemes'

Plug 'tpope/vim-surround'
Plug 'chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'terryma/vim-multiple-cursors'

"markdown preview
Plug 'JamshedVesuna/vim-markdown-preview'


call plug#end()

" Set colors
set background=dark
colorscheme hybrid

" Get cool icons in status bar
let g:airline_powerline_fonts = 1

" Set tabs to double space
set expandtab
set shiftwidth=2
set softtabstop=2

" bracket completion
inoremap { {<CR><BS>}<Esc>ko

set number " line numers

" syntastic cnfig
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Enable flow support
let g:javascript_plugin_flow = 1

" Markdown should use grip - github flavor
let vim_markdown_preview_github=1

inoremap jk <esc>
set updatetime=250 " Make update faster to see git notifications

set clipboard=unnamed " Allow shared clipboard mac <--> vim

" Auto open nerdtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto close nerdtree when file is selected
let NERDTreeQuitOnOpen=1

" Shortcut for openening and closing nerdtree with ctrl N
map <C-n> :NERDTreeToggle<CR>

" multicursor mapping
let g:multi_cursor_start_key='<C-m>'

