set nocompatible 
set encoding=utf-8
syntax on
filetype plugin on

set hlsearch incsearch
set runtimepath+=~/vimfiles/plugin
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

"Limpa os mapeamentos
mapclear | mapclear <buffer> | mapclear! | mapclear! <buffer>

let mapleader = "-"

"if has('gui_running')
"	set guioptions-=m  "remove menu bar
"	set guioptions-=T  "remove toolbar
"	set guioptions-=r  "remove right-hand scroll bar
"	set guioptions-=L  "remove left-hand scroll bar
"	set guifont=Anonymice_Powerline:h16:cANSI:qDRAFT
"	nnoremap <leader>tb :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR> 
"endif



" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

	" Make sure you use single quotes

	" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	" Plug 'junegunn/vim-easy-align'

	" Any valid git URL is allowed
	" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

	" Multiple Plug commands can be written in a single line using | separators
	" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

	" On-demand loading
	" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

	" Using a non-master branch
	" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

	" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
	" Plug 'fatih/vim-go', { 'tag': '*' }

	" Plugin options
	" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

	" Plugin outside ~/.vim/plugged with post-update hook
	" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

	" Unmanaged plugin (manually installed and updated)
	" Plug '~/my-prototype-plugin'

	" Initialize plugin system
"	Plug 'junegunn/goyo.vim' 
	Plug 'micha/vim-colors-solarized'
	Plug 'scrooloose/nerdtree'
"	Plug 'jceb/vim-orgmode'
"	Plug 'tpope/vim-speeddating'
	Plug 'plasticboy/vim-markdown'
"	Plug 'reedes/vim-pencil'
"	Plug 'vim-airline/vim-airline'
"	Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Goyo {{{
"	let g:goyo_width=80
"	let g:goyo_height=55
" }}}

colorscheme solarized

set formatoptions=w
set tw=80
set wrapmargin=0
syntax enable
set background=dark
set number

autocmd FileType markdown imap -- —


" Atalho para abrir .vimrc e aplicá-lo automaticamente
map <leader>ev :tabe $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>

" Abre o Goyo 
"map <leader>go :Goyo<cr>

" Abre o NERDTree
map <leader>nt :NERDTreeToggle<cr> 

" Atalho - Normal - H: vai para início da linha
nnoremap H ^

" Atalho - Normal - L: vai para o fim da linha
nnoremap L $
j
" Atalho - Interativo - jk: Sai do modo interativo 
inoremap jk <esc>

" Atalho - Normal - TAB: Muda de janela
nnoremap <tab> <c-w><c-w>

" Atalho - Normal - @: Reformata linha
nnoremap <buffer> <leader>@ ggVGgq 

"setlocal laststatus=2
"let g:airline_theme='zenburn' 
"let g:airline_section_c = '%F'
"let g:airline_section_y = '%l/%L'
"let g:airline#extensions#tabline#fnamemod = ':p'
"let g:airline#extensions#wordcount#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1



noremap <c-u> <esc>viwUi
nnoremap <c-u> viwU


" Vimscript file settings ------------------------------ {{{
augroup filetype_vim
	autocmd!
	autocmd Filetype vim setlocal foldmethod=marker
augroup END
" }}}
