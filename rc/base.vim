set number
set wrap
set nohlsearch

set laststatus=2
set statusline=%F%r%h\ %{'['.(&fenc!=''?&fenc:&enc).']'}
set statusline+=%=(%l,%c)\ %p%%

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" set foldmethod=syntax
set foldmethod=indent
set foldlevel=1
set foldnestmax=2
highlight Folded ctermbg=black
highlight Folded ctermfg=blue

set hidden
set clipboard=unnamed

set incsearch

set backspace=indent,eol,start

set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

set swapfile
set directory=~/.vim/tmpfiles/swap
set backup
set backupdir=~/.vim/tmpfiles/backup
set undofile
set undodir=~/.vim/tmpfiles/undo
set viminfo+=n~/.vim/tmpfiles/viminfo
