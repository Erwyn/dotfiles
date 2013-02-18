" Activation des filetype plugins
filetype plugin on

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

" =============== Misc =================
python from powerline.bindings.vim import source_plugin; source_plugin()
set laststatus=2
set mouse=a
set guifont=DejaVu\ Sans\ Mono\ 10
set dir=~/tmp
colorscheme molokai
let treeExplVertical=1
let treeExplWinSize=40
set number
let Tlist_Use_Right_Window= 1
let tlist_php_settings = 'php;c:class;f:function'
set autoread
" ======================================

" ============= Trailings ==============
set list listchars=trail:~,nbsp:@
" ======================================

" =========== Raccourcis ===============
map <F9> :NERDTreeToggle <Return>
map <F2> :TlistToggle <CR>
map <F3> :shell  <CR>
map L :GPickFile<CR>
map l :GPickBuffer<CR>
nmap m :set list!<Return>
" ======================================

" =========== ACK ======================
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" ======================================

" ====== GPicker settings ==============
let g:gpicker_open_file_in_tabs = 1
" ======================================