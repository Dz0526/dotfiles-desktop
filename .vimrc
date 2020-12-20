set clipboard=unnamedplus
set number

" Plugin manager

call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" color scheme nord

colorscheme nord

syntax enable

" vim-airline
let g:airline#extensions#tabline#enabled = 1

nmap <C-l> <Plug>AirlineSelectNextTab
nmap <C-h> <Plug>AirlineSelectPrevTab

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
