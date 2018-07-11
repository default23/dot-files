"-------------------------------------------------------------------------------------
"---------			Plugin Links				    ----------
"-------------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

"Vim GUI plugins
Plug 'stephpy/vim-yaml'
Plug 'pearofducks/ansible-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Programming && Navigation Plugins
Plug 'ryanoasis/vim-devicons'
Plug 'herringtondarkholme/yats.vim'
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
Plug 'Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'othree/yajs.vim'
Plug 'davidhalter/jedi-vim'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'othree/html5.vim'
Plug 'marijnh/tern_for_vim'
Plug 'burnettk/vim-angular'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


"Color Schemes
"Plug 'morhetz/gruvbox'
Plug 'KeitaNakamura/neodark.vim'

call plug#end()
"-------------------------------------------------------------------------------------
"---------			Environment settings			     					 ---------
"-------------------------------------------------------------------------------------
set encoding=utf-8

set nocompatible
set relativenumber
set t_Co=256
set tabstop=4
syntax on

let g:neodark#use_256color = 1
let g:neodark#background='normal'

let g:ansible_unindent_after_newline = 1


colorscheme neodark 
set background=dark

"Mappings
map <C-n> :NERDTreeToggle<CR> 
map <Leader> <Plug>(easymotion-prefix)

nnoremap <silent> <Leader>= :vertical resize +10<CR>
nnoremap <silent> <Leader>- :vertical resize -10<CR>
nnoremap <Leader>n :call ToggleNumbersMode()<CR>

"Plugins Configuration
"let g:mapleader=','

let mapleader = ','

let g:airline#extensions#tabline#enabled = 1 "Airline Enable
let g:airline_powerline_fonts            = 1
let g:airline_theme                      = 'solarized'
set laststatus=2

let g:angular_source_directory = 'src'
let g:angular_find_ignore = ['dist/']

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<A-Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'
let g:UltiSnipsMappingsToIgnore = ['autocomplete']

" let g:UltiSnipsSnippetsDir = '~/.vim/snips/UltiSnips'
let g:UltiSnipsSnippetDirectories = ['~/.vim/snips/UltiSnips']

" NERD Commenter

let g:NERDSpaceDelims=1

"-------------------------------------------------------------------------------------
"---------			Auto-Commands 											 ---------
"-------------------------------------------------------------------------------------

autocmd BufWritePost .vimrc source %
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype typescript setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype html setlocal ts=4 sw=4 sts=4 expandtab

"-------------------------------------------------------------------------------------
"---------			Commands												 ---------
"-------------------------------------------------------------------------------------

command! CheatsWindows !cat ~/vim-cheats/windows-cheats

"-------------------------------------------------------------------------------------
"---------			Functions 												 ---------
"-------------------------------------------------------------------------------------

function! ToggleNumbersMode() 
	if (&relativenumber==1)
		set relativenumber!
		set number
	else
		set number!
		set relativenumber
	endif
endfunc
