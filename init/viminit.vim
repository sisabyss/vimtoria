"----------------------------------------------------------
" core initialize
"----------------------------------------------------------
set nocompatible

set backspace=eol,start,indent
set autoindent
set cindent
set winaltkeys=no
set nowrap " only display part of long sentence
set ttimeout
set ttimeoutlen=50
set cmdheight=1
set ruler " show the line and the column numbers
set nopaste
set display=lastline

set shiftwidth=4
set softtabstop=4
set noexpandtab
set tabstop=4

if has('multi_byte')
	set encoding=utf-8
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
endif

set showcmd

"---------------------------------------------------------------------
" miscs
"---------------------------------------------------------------------
set scrolloff=2
set showmatch " briefly jump to matching bracket when inserting
set matchtime=3
