"---------------------------------------
" turning lsp
"---------------------------------------
" let g:lsp_completion_documentation_enabled = 0
" let g:lsp_diagnostics_enabled = 0

"---------------------------------------
" turning completion
"---------------------------------------
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

nmap <buffer> gd	<plug>(lsp-definition)
nmap <buffer> gt	<plug>(lsp-type-definition)
nmap <buffer> gr	<plug>(lsp-references)
nmap <buffer> gi	<plug>(lsp-implementation)
nmap <buffer> gs	<plug>(lsp-document-sympol-search)
nmap <buffer> gS	<plug>(lsp-workplace-sympol-search)
nmap <buffer> K		<plug>(lsp-hover)
nmap <buffer> g[	<plug>(lsp-previous-diagnostic)
nmap <buffer> g]	<plug>(lsp-next-diagnostic)

