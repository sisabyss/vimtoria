"--------------------------------------------------------------------
" unix config
"--------------------------------------------------------------------
set hlsearch
set incsearch
set wildmenu

"--------------------------------------------------------------------
" syntax config
"--------------------------------------------------------------------
if has('syntax')
	syntax enable
	syntax on
endif 
set background=dark

set relativenumber

"--------------------------------------------------------------------
" tab label config
"--------------------------------------------------------------------
set tags=./.tags;,.tags

"--------------------------------------------------------------------
" cursor config
"--------------------------------------------------------------------
set guicursor=n-v-c:block-Cursor/lCursor,o:hor50-Cursor,ve:ver35-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175",
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set cursorline
