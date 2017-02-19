"
" ::indentline
"
" apply indentline to tabs  
set list listchars=tab:\|\

"
" ::NERDTree
"
" always show hidden files 
let NERDTreeShowHidden=1

"
" ::neocomplete
"
" Disable AutoComplPop.
let g:acp_enableAtStartup=0
" Use neocomplete.
let g:neocomplete#enable_at_startup=1
" Use smartcase.
let g:neocomplete#enable_smart_case=1
" Use underbars as a splitting char.
let g:neocomplete#enable_underbar_completion=1
" Set minimum sytax keyword length.
let g:neocomplete#min_syntax_length=3

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns={}
endif
let g:neocomplete#keyword_patterns['default']='\h\w*'


"
" ::neosnippets
"
" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
" Tell Neosnippet about the other snippets let
" g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"
" ::vim-submode
"
let g:submode_timeout=1
let g:submode_timeoutlen=800

"
" ::NERDCommenter
"
" Add spaces after comment delimiters by default.
let g:NERDSpaceDelims=1
" Use compact syntax for prettified multi-line comments.
let g:NERDCompactSexyComs=1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
