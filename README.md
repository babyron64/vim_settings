# vim_settings

## installation
Execute `install.sh`. Then.vimrc file and .vim folder will be added to $HOME/.

NOTE: Your $HOME/.vim folder and $HOME/.vimrc file will be replaced. To avoid this, you have to install manually.

## for windows users
If you use `_vim` instead of `.vim` for the folder name that contains vim settings, modify by yourself the following pathes at `rc/dein_setting.vim` file.

Replace '.' character with '_': `~/.vim/...` with `~/_vim/...`.

#### Before
```
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.vim/dein')
let s:toml_file = expand('~/.vim/rc/dein.toml')
```

#### After
```
set runtimepath+=~/_vim/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/_vim/dein')
let s:toml_file = expand('~/_vim/rc/dein.toml')
```

## requirement
dein.vim will be automatically installed to dein folder.
