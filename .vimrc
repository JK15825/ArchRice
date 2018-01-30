call plug#begin('~/.vim/plugged')
Plug 'xero/blaquemagick.vim'
Plug 'francoiscabrol/ranger.vim'
"Plug 'artur-shaik/vim-javacomplete2'
"Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
"Plug 'alxhnr/latex_preview'
Plug 'yuttie/hydrangea-vim'
"Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
" Plug 'jeetsukumaran/vim-buffergator'

call plug#end()
let g:latex_preivew#compiler = 'pdflatex'
let g:latex_preview#rebuild_events = 'TextChanged,TextChangedI'
"let g:ale_java_javac_options= ':home/jkaspar/Downloads/jogamp/jogamp-all-platforms/jar/jogl-all.jar:/home/jkaspar/Downloads/jogamp/jogamp-all-platforms/jar/gluegen-rt.jar'
syntax on
colorscheme blaquemagick
"let g:airline_theme='badcat'
set number
set number relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
nnoremap <F5> :buffers<CR>:buffer<Space>
"let g:syntastic_java_javac_classpath = "/home/jkaspar/Downloads/jogamp/jogamp-all-platforms/jar/jogl-all.jar\n/home/jkaspar/Downloads/jogamp/jogamp-all-platforms/jar/gluegen-rt.jar"

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"setlocal spell spelllang=en_us
"let g:JavaComplete_Home = $HOME . '/.vim/bundle/vim-javacomplete2'
"let $CLASSPATH .= '.:' . $HOME . '/.vim/bundle/vim-javacomplete2/lib/javavi/target/classes'
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
