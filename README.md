# VIMTORIA

Personal vim config file, may not fit for everyone.

___

## Install

### Linux

- make a `~/.vim` directory, and clone the repository under `~/.vim/vimtoria`:

```shell
cd ~/.vim
git clone https://github.com/sisabyss/vimtoria.git
```

- edit your `~/.vimrc`, add these:

```vimscript
so ~/.vim/vimtoria/init.vim

let g:bundle_group = ['simple', 'basic', 'high', 'colors', 'ui', 'lsp']
so ~/.vim/vimtoria/bundle.vim

so ~/.vim/vimtoria/sisabyss.vim        
```

___
