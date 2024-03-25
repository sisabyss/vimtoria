"---------------------------------------------------------------------
" system detection
"---------------------------------------------------------------------

"----------------------------------------------------------------------
" include script
"----------------------------------------------------------------------
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if !exists(':IncScript')
	command! IncScript -nargs=1 exec 'so ' . fnameescape(s:home .'/<args>')
endif

function! bundle#path(path)
	let path = expand(s:home . '/' . a:path)
	return substitute(path, '\\', '/', 'g')
endfunc

function! s:path(path)
	return bundle#path(a:path)
endfunc

"----------------------------------------------------------------------
" package begin
"----------------------------------------------------------------------
if !exists('g:bundle_group')
	let g:bundle_group = []
endif

let g:bundle_enabled = {}
for key in g:bundle_group | let g:bundle_enabled[key] = 1 | endfor
let s:enabled = g:bundle_enabled

call plug#begin(get(g:, 'bundle_home', '~/.vim/bundles'))

"----------------------------------------------------------------------
" package group - simple
"----------------------------------------------------------------------
if has_key(s:enabled, 'simple')
	" Jump to any location by two sneaks
	Plug 'justinmk/vim-sneak'

	nmap gz <Plug>Sneak_s
	nmap gZ <Plug>Sneak_S
	vmap gz <Plug>Sneak_s
	vmap gZ <Plug>Sneak_S
	xmap gz <Plug>Sneak_s
	xmap gZ <Plug>Sneak_S
endif 

"----------------------------------------------------------------------
" package group - basic
"----------------------------------------------------------------------
if has_key(s:enabled, 'basic')
	" Basic syntax support begin
	Plug 'kana/vim-textobj-user'
	Plug 'kana/vim-textobj-syntax'
	Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
	Plug 'bps/vim-textobj-python', {'for': 'python'}
	Plug 'jceb/vim-textobj-uri'
	Plug 'sgur/vim-textobj-parameter'

	Plug 'vim-python/python-syntax', { 'for': ['python'] }
	Plug 'pboettch/vim-cmake-syntax', { 'for': ['cmake'] }
	Plug 'preservim/vim-markdown'

	let g:cpp_class_scope_highlight = 1
	let g:cpp_member_variable_highlight = 1
	let g:cpp_class_decl_highlight = 1
	" let g:cpp_experimental_simple_template_highlight = 1
	let g:cpp_concepts_highlight = 1
	" let g:cpp_no_function_highlight = 1
	let g:cpp_posix_standard = 1

	let g:python_highlight_builtins = 1
	let g:python_highlight_builtin_objs = 1
	let g:python_highlight_builtin_types = 1
	let g:python_highlight_builtin_funcs = 1
	" basic syntax support end
	
	" LeaderF begin
	Plug 'Yggdroot/LeaderF'
	IncScript config/leaderf.vim
	" Plug 'tamago324/LeaderF-filer'
	" Plug 'voldikss/LeaderF-emoji'	
	" LeaderF end
	
	" gtags support
	Plug 'ludovicchabant/vim-gutentags'	
	IncScript config/gutentags.vim
endif

"----------------------------------------------------------------------
" package group - high
"----------------------------------------------------------------------
if has_key(s:enabled, 'high')
	" async exec command
	Plug 'skywind3000/asyncrun.vim'
	IncScript config/asyncrun.vim

	" task system, and better, async
	Plug 'skywind3000/asynctasks.vim'	
	IncScript config/asynctasks.vim
endif


"----------------------------------------------------------------------
" package group - ui 
"----------------------------------------------------------------------
if has_key(s:enabled, 'ui')
	" airline below
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" dash board
	Plug 'mhinz/vim-startify'

	" directory view
	Plug 'preservim/nerdtree', {'on': ['NERDTree', 'NERDTreeFocus', 'NERDTreeToggle', 'NERDTreeCWD', 'NERDTreeFind'] }
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	let g:NERDTreeWinSize=20

	" mini headbar
	Plug 'skywind3000/vim-quickui'
endif

"----------------------------------------------------------------------
" package group - lsp 
"----------------------------------------------------------------------
if has_key(s:enabled, 'lsp')
	" lsp support begin
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/asyncomplete-buffer.vim'
	Plug 'prabirshrestha/asyncomplete-tags.vim'
	Plug 'jsit/asyncomplete-user.vim'

	IncScript config/lsp.vim
	" lsp support end
endif

"----------------------------------------------------------------------
" package group - colors
"----------------------------------------------------------------------
if has_key(s:enabled, 'colors')
	Plug 'cocopon/iceberg.vim'
	Plug 'joshdick/onedark.vim'
	Plug 'morhetz/gruvbox'
endif

call plug#end()
