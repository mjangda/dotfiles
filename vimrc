" Smart case sensitivity
set ignorecase
set smartcase

" Detect filetype and use syntax highlighting
filetype on
filetype plugin on
syntax on

" Keep a bunch of command line history
set history=1000

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
colorscheme wombat256mod 
set background=dark

" Enable incremental search
set incsearch

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/local/bin/php %<CR>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>

" PHP Autocomplete Preview
set completeopt=menuone,preview
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"""""""""""""""""""""""""""""""
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
" vim-scripts repos
Bundle "L9"
Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
Bundle 'ack.vim'
Bundle 'scrooloose/syntastic'

"...All your other bundles...
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

