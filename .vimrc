set clipboard=unnamedplus
set number
set wildmenu

" Plugin manager

call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'skanehira/preview-markdown.vim'
Plug 'kovisoft/slimv'
Plug 'pangloss/vim-javascript'
" use mdr (md parser)
call plug#end()

" color scheme nord

colorscheme nord

syntax enable

" vim-airline
let g:airline#extensions#tabline#enabled = 1

nmap <C-l> <Plug>AirlineSelectNextTab
nmap <C-h> <Plug>AirlineSelectPrevTab

" markdown.vim
let g:preview_markdown_vertical = 1

" slimv
let g:paredit_mode = 1
let g:paredit_electric_return = 0

let g:slimv_repl_split = 4
let g:slimv_repl_name = 'REPL'

let g:slimv_lisp = '/usr/local/bin/ros run'
let g:slimv_impl = 'sbcl'

let g:slimv_swank_cmd = "!ros -e '(ql:quickload :swank) (swank:create-server)' wait &"

let g:swank_port = 4005
let g:lisp_rainbow = 1

autocmd BufNewFile,BufRead *.asd set filetype = lisp

" indent
if has("autocmd")
	filetype plugin on

	filetype indent on

	autocmd FileType c	setlocal sw=2 sts=2 ts=2 et
	autocmd FileType python	setlocal sw=4 sts=4 ts=4 et
	autocmd FileType html	setlocal sw=2 sts=2 ts=2 et
	autocmd FileType javascript	setlocal sw=2 sts=2 ts=2 et
	autocmd FileType css	setlocal sw=2 sts=2 ts=2 et
	autocmd FileType go	setlocal sw=4 sts=4 ts=4 et
endif

" keybind normal mode
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
