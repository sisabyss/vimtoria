" tab manipulation
noremap		<silent><c-t>		:tabnew<cr>
inoremap	<silent><c-t>		<ESC>:tabnew<cr>
noremap		<silent><c-q>		:tabclose<cr>
inoremap	<silent><c-q>		<ESC>:tabclose<cr>
noremap		<silent><c-l>		:tabnext<cr>
inoremap	<silent><c-l>		<ESC>:tabnext<cr>
noremap		<silent><c-h>		:tabprev<cr>
inoremap	<silent><c-h>		<ESC>:tabprev<cr>

" tab swich
noremap <silent><M-1> 1gt
noremap <silent><M-2> 2gt
noremap <silent><M-3> 3gt
noremap <silent><M-4> 4gt
noremap <silent><M-5> 5gt
noremap <silent><M-6> 6gt
noremap <silent><M-7> 7gt
noremap <silent><M-8> 8gt
noremap <silent><M-9> 9gt
noremap <silent><M-0> :tablast<cr>

" fast save  
noremap <c-s> :w<cr>
inoremap <c-s> <ESC>:w<cr>

" editing commands
noremap <space>aa ggVG

" movement enhancement
noremap <M-h> b
noremap	<M-l> w
inoremap <M-h> b
inoremap <M-h> w

" NERDTree map
noremap <c-n> :NERDTreeToggle<cr>
