"
" ::system
" Display key bindings set here
cnoremap kb :<C-u>e ~/.vim/rc/keybind.vim 
" Disable 's' inserting to use 's' as a prefix
map s <NOP>
map <S-s> <NOP>
" base
noremap sq :<C-u>q<CR>
noremap sw :<C-u>w<CR>
noremap sfq :<C-u>q!<CR>
noremap swq :<C-u>wq<CR>
noremap sz <C-z>
noremap sr :<C-u>e<CR>
noremap sfr :<C-u>e!<CR>
noremap se :<C-u>e<Space>
" reload vimrc
cnoremap rrc :<C-u>source ~/.vimrc
" cursor behavior
noremap j gj
noremap k gk
noremap so <C-o>
noremap si <C-i>
noremap <S-j> <S-g>
noremap <S-k> gg
noremap <S-h> ^
noremap <S-l> $
nnoremap <Space> i<Space><ESC>
nnoremap <CR> $a<CR><ESC>
" page scroll
nnoremap <S-u> <C-u>
nnoremap <S-d> <C-d>
" nnoremap <S-f> <C-f>
" nnoremap <S-b> <C-b>
call submode#enter_with('scroll_line', 'n', '', 'ssk', '<C-y>')
call submode#enter_with('scroll_line', 'n', '', 'ssj', '<C-e>')
call submode#map('scroll_line', 'n', '', 'k', '<C-y>')
call submode#map('scroll_line', 'n', '', 'j', '<C-e>')
call submode#enter_with('scroll_half', 'n', '', '<S-s>sk', '<C-u>')
call submode#enter_with('scroll_half', 'n', '', '<S-s>sj', '<C-d>')
call submode#map('scroll_half', 'n', '', 'k', '<C-u>')
call submode#map('scroll_half', 'n', '', 'j', '<C-d>')
call submode#enter_with('scroll_page', 'n', '', '<S-s><S-s>k', '<C-b>')
call submode#enter_with('scroll_page', 'n', '', '<S-s><S-s>j', '<C-f>')
call submode#map('scroll_page', 'n', '', 'k', '<C-b>')
call submode#map('scroll_page', 'n', '', 'j', '<C-f>')
" quickfix
nnoremap skg :<C-u>vertical rightbelow cope<CR>
nnoremap skv :<C-u>rightbelow cope<CR>
" nnoremap ska :<C-u>vertical leftabove cope<CR>
" nnoremap skr :<C-u>leftabove cope<CR>
nnoremap skc :<C-u>cc<Space>       
nnoremap skq :<C-u>cclose<CR>      
call submode#enter_with('gtags_updown', 'n', '', 'skn', ':<C-u>cn<CR>')
call submode#enter_with('gtags_updown', 'n', '', 'skp', ':<C-u>cp<CR>')
call submode#map('gtags_updown', 'n', '', 'n', ':<C-u>cn<CR>')
call submode#map('gtags_updown', 'n', '', 'p', ':<C-u>cp<CR>')
" misc
noremap cg bcw
" pane setting
nnoremap spg :<C-u>vertical rightbelow new<CR>
nnoremap spv :<C-u>rightbelow new<CR>
nnoremap spa :<C-u>vertical leftabove new<CR>
nnoremap spr :<C-u>leftabove new<CR>
noremap spq :<C-u>close<CR>
noremap spfq :<C-u>close!<CR>
noremap spoq :<C-u>only<CR>
noremap spofq :<C-u>only!<CR>
call submode#enter_with('panecursor', 'n', '', 'sph', '<C-w>h')
call submode#enter_with('panecursor', 'n', '', 'spj', '<C-w>j')
call submode#enter_with('panecursor', 'n', '', 'spk', '<C-w>k')
call submode#enter_with('panecursor', 'n', '', 'spl', '<C-w>l')
call submode#map('panecursor', 'n', '', 'h', '<C-w>h')
call submode#map('panecursor', 'n', '', 'j', '<C-w>j')
call submode#map('panecursor', 'n', '', 'k', '<C-w>k')
call submode#map('panecursor', 'n', '', 'l', '<C-w>l')
call submode#enter_with('paneresize', 'n', '', '<S-s>pl', '<C-w>>')
call submode#enter_with('paneresize', 'n', '', '<S-s>ph', '<C-w><')
call submode#enter_with('paneresize', 'n', '', '<S-s>pj', '<C-w>+')
call submode#enter_with('paneresize', 'n', '', '<S-s>pk', '<C-w>-')
call submode#map('paneresize', 'n', '', 'l', '<C-w>>')
call submode#map('paneresize', 'n', '', 'h', '<C-w><')
call submode#map('paneresize', 'n', '', 'j', '<C-w>+')
call submode#map('paneresize', 'n', '', 'k', '<C-w>-')
call submode#enter_with('panemove', 'n', '', '<S-s><S-p>l', '<C-w>L')
call submode#enter_with('panemove', 'n', '', '<S-s><S-p>h', '<C-w>H')
call submode#enter_with('panemove', 'n', '', '<S-s><S-p>j', '<C-w>J')
call submode#enter_with('panemove', 'n', '', '<S-s><S-p>k', '<C-w>K')
call submode#map('panemove', 'n', '', 'l', '<C-w>L')
call submode#map('panemove', 'n', '', 'h', '<C-w>H')
call submode#map('panemove', 'n', '', 'j', '<C-w>J')
call submode#map('panemove', 'n', '', 'k', '<C-w>K')
cnoremap ps sp
cnoremap pv vs

" tab setting
nnoremap sta :<C-u>tabnew<CR>
call submode#enter_with('tabmove', 'n', '', 'stn', 'gt')
call submode#enter_with('tabmove', 'n', '', 'stp', 'gT')
call submode#map('tabmove', 'n', '', 'n', 'gt')
call submode#map('tabmove', 'n', '', 'p', 'gT')
" buffer setting
cnoremap bl buffers
noremap sbq :<C-u>bdelete<CR>
noremap sbwq :<C-u>w<CR>:<C-u>bdelete<CR>
noremap sbfq :<C-u>bdelete!<CR>
call submode#enter_with('bufmove', 'n', '', 'sbn', ':<C-u>bn<CR>')
call submode#enter_with('bufmove', 'n', '', 'sbp', ':<C-u>bp<CR>')
call submode#map('bufmove', 'n', '', 'n', ':<C-u>bn<CR>')
call submode#map('bufmove', 'n', '', 'p', ':<C-u>bp<CR>')
" inc/dec setting
call submode#enter_with('incdec', 'n', '', 'sa', '<C-a>')
call submode#enter_with('incdec', 'n', '', 'sx', '<C-x>')
call submode#map('incdec', 'n', '', 'a', '<C-a>')
call submode#map('incdec', 'n', '', 'x', '<C-x>')

"
" ::Gtags
"
noremap sg<Space> :Gtags<Space>
noremap sgf :Gtags -f<Space>
noremap sgh :Gtags -f %<CR>
noremap sgr :Gtags -r<Space>
" noremap <C-g>o :Gtags -o
" noremap <C-g>s :Gtags -s
noremap sgg :Gtags -g<Space>
noremap sgj :GtagsCursor<CR>

"
" ::NERDTree
" 
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"
" ::neocomplete
"
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

"
" ::neosnippets
"
imap <C-k> <Plug>(neosnippets_expand_or_jump)
smap <C-k> <Plug>(neosnippets_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"xmap <C-k> <Plug>(neosnippets_expand_target)

"
" ::markdown
"
nnoremap <silent> mdp :<C-u>PrevimOpen<CR>
