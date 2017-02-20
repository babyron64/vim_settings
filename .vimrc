set runtimepath+=$HOME/.vim

"swap Caps_Lock and Esc
au VIMENTER * silent exec "!xmodmap $HOME/.vim/.Xmodmap_set"
au VIMLEAVE * silent exec "!xmodmap $HOME/.vim/.Xmodmap_reset"

runtime! rc/base.vim
runtime! rc/dein_setting.vim
runtime! rc/plugins.vim
runtime! rc/keybind.vim
"runtime! rc/*.vim

syntax enable 
