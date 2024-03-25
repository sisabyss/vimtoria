let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
command! -nargs=1 IncScript exec 'so '. fnameescape(s:home."/<args>")

IncScript init/viminit.vim
IncScript init/config.vim

IncScript init/ignore.vim
IncScript init/keymaps.vim

