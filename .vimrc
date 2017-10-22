call plug#begin('~/.vim/plugged')

Plug 'francoiscabrol/ranger.vim'
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'alxhnr/latex_preview'
Plug 'yuttie/hydrangea-vim'
" Plug 'jeetsukumaran/vim-buffergator'

call plug#end()
let g:latex_preivew#compiler = 'pdflatex'
let g:latex_preview#rebuild_events = 'TextChanged,TextChangedI'

syntax on
colorscheme hydrangea
let g:airline_theme='wombat'
set number
set shiftwidth=4
set tabstop=4
set expandtab
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
