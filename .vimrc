" ========== VUNDLE STUFF ==============
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
" ========== Packages =================
Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
" ======================================



" Activation des filetype plugins
filetype plugin indent on

" ========== OMNICOMPLETION ============
" Omnicompletion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Fermeture de la preview omnicompletion automatiquement
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" ======================================

" =========== INDENTATION ==============
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" ======================================

" =========== Theme related configuration ==========
set t_Co=256
colorscheme solarized
set background=dark
" ==================================================

" =============== Misc =================
syntax on

set laststatus=2
set mouse=a
set dir=/tmp
let treeExplVertical=1
let treeExplWinSize=40
set number
let Tlist_Use_Right_Window= 1
let tlist_php_settings = 'php;c:class;f:function'
set autoread
set wildmenu
set wildmode=longest:full,full
set cursorline
set hlsearch
set incsearch
" ======================================

" ============= Trailings ==============
set list listchars=trail:~,nbsp:@
" ======================================

" =========== Raccourcis ===============
let mapleader = ","
map <F9> :NERDTreeToggle <Return>
map <F2> :TlistToggle <CR>
map <F3> :shell  <CR>
map L :CtrlP<CR>
map l :CtrlPBuffer<CR>
nmap m :set list!<Return>
map <Leader>s :w <Return>
map <Leader>q :wq <Return>
map  :noh <Return>
" ======================================

" =========== ACK & AG ======================
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:agprg="ag --column"
" ======================================

" ====== GPicker settings ==============
"let g:ctrlp_by_filename = 1
" ======================================
