" Leader
set showcmd "show leader in status
let mapleader = " "

" Smart case sensitivity
set ignorecase
set smartcase

" Detect filetype and use syntax highlighting
filetype on
filetype plugin on
syntax on

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Keep a bunch of command line history
set history=1000

" Only hide buffers on switch
set hidden

" Show the cursor position and line numbers
set ruler
set number

" Enabled auto-indenting
"set autoindent
"set smartindent
"filetype indent on

" Disable Backups and Annoying .swp files
set nobackup
set nowritebackup
set noswapfile

" Font and color scheme
set t_Co=256 " compat with secureCRT
set gfn=Inconsolata:h10:cANSI
colorscheme molokai
set background=dark
if has('gui_running')
  set guifont=Monospace\ 20
endif

" Enable incremental search
set incsearch

" Enable clipboard integration
set clipboard=unnamedplus

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/local/bin/php %<CR>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>

" PHP Autocomplete Preview
set completeopt=menuone,preview
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Set fancy title
set title

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" nerdtree config
"" auto-open nt window on start
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"" Close vim if only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"" ctrl+n shortcut
map <C-n> :NERDTreeTabsToggle<CR>

""""""""""""""""""""""""""""""
" vim-go - golang-specific settings 
""""""""""""""""""""""""""""""
" goimports > gofmt
let g:go_fmt_command = "goimports"
" Highlighting for funcs
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_auto_type_info = 1
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

" Keyboard Shortcut Maps
map <C-j> :bp<CR>
map <C-k> :bn<CR>

" """""""""""""""""""""""""""""""
" START: Vundle Settings
"""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

" Setting up Vundle - the vim plugin bundler
let vundle_installing=0
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	let vundle_installing=1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle "kien/ctrlp.vim"
Bundle "bling/vim-airline"
Bundle "mileszs/ack.vim"
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mhinz/vim-signify'
Bundle 'Shougo/unite.vim'
Bundle 'fatih/vim-go'
Bundle 'jelera/vim-javascript-syntax'

" vim-scripts repos
Bundle "L9"
Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

if vundle_installing == 1
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:BundleInstall
endif

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

""""""""""""""""""
" END: Vundle
""""""""""""""""""

