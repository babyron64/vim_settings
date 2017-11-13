# vim_settings

## Installation
Execute `install.sh`. Then.vimrc file and .vim folder will be added to $HOME/.

NOTE: Your $HOME/.vim folder and $HOME/.vimrc file will be replaced. To avoid this, you have to install manually.

## Caution
The settings included are not compatible with gvim now.

## For windows users
If you use `_vim` instead of `.vim` for the folder name that contains vim settings, modify by yourself the following pathes at `rc/dein_setting.vim` and also at `rc/base.vim` file.

Replace '.' character with '_': `~/.vim/...` with `~/_vim/...`.
### at `rc/base.vim`
##### Before
```
set directory=~/.vim/tmpfiles/swap
set backup
set backupdir=~/.vim/tmpfiles/backup
set undofile
set undodir=~/.vim/tmpfiles/undo
set viminfo+=~/.vim/tmpfiles_viminfo
```

##### After
```
set directory=~/_vim/tmpfiles/swap
set backup
set backupdir=~/_vim/tmpfiles/backup
set undofile
set undodir=~/_vim/tmpfiles/undo
set viminfo+=~/_vim/tmpfiles_viminfo
```

#### at `rc/dein_setting.vim`

##### Before
```
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.vim/dein')
let s:toml_file = expand('~/.vim/rc/dein.toml')
```

##### After
```
set runtimepath+=~/_vim/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/_vim/dein')
let s:toml_file = expand('~/_vim/rc/dein.toml')
```

## Requirement
dein.vim will be automatically installed to dein folder.
