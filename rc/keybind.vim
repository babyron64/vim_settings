"
" ::system
"
" Disable 's' inserting to use 's' as a prefix
map s <NOP>
" base
noremap sq<CR> :<C-u>q<CR>
noremap sw<CR> :<C-u>w<CR>
noremap sqf<CR> :<C-u>q!<CR>
noremap swq<CR> :<C-u>wq<CR>
noremap sz<CR> <C-z>
" cursor behavior
noremap j gj
noremap k gk
noremap <S-h> ^
noremap <S-l> $
nnoremap <Space> i<Space><ESC>
nnoremap <CR> $a<CR><ESC>
" pane setting
nnoremap <C-p>s :<C-u>sp<CR>
nnoremap <C-p>v :<C-u>vsp<CR>
call submode#enter_with('panemove', 'n', '', '<C-p>h', '<C-w>h')
call submode#enter_with('panemove', 'n', '', '<C-p>j', '<C-w>j')
call submode#enter_with('panemove', 'n', '', '<C-p>k', '<C-w>k')
call submode#enter_with('panemove', 'n', '', '<C-p>l', '<C-w>l')
call submode#map('panemove', 'n', '', 'h', '<C-w>h')
call submode#map('panemove', 'n', '', 'j', '<C-w>j')
call submode#map('panemove', 'n', '', 'k', '<C-w>k')
call submode#map('panemove', 'n', '', 'l', '<C-w>l')
call submode#enter_with('paneresize', 'n', '', 'Pl', '<C-w>>')
call submode#enter_with('paneresize', 'n', '', 'Ph', '<C-w><')
call submode#enter_with('paneresize', 'n', '', 'Pj', '<C-w>+')
call submode#enter_with('paneresize', 'n', '', 'Pk', '<C-w>-')
call submode#map('paneresize', 'n', '', 'l', '<C-w>>')
call submode#map('paneresize', 'n', '', 'h', '<C-w><')
call submode#map('paneresize', 'n', '', 'j', '<C-w>+')
call submode#map('paneresize', 'n', '', 'k', '<C-w>-')
cnoremap ps sp
cnoremap pv vs
" tab setting
nnoremap <C-t>o :<C-u>tabnew<CR>
call submode#enter_with('tabmove', 'n', '', '<C-t>n', 'gt')
call submode#enter_with('tabmove', 'n', '', '<C-t>p', 'gT')
call submode#map('tabmove', 'n', '', 'n', 'gt')
call submode#map('tabmove', 'n', '', 'p', 'gT')
" buffer setting
cnoremap bf buffers
nnoremap <C-b>b :<C-u>b#<CR>
call submode#enter_with('bufmove', 'n', '', '<C-b>n', ':<C-u>bn<CR>')
call submode#enter_with('bufmove', 'n', '', '<C-b>p', ':<C-u>bp<CR>')
call submode#map('tabmove', 'n', '', 'n', ':<C-u>bn<CR>')
call submode#map('tabmove', 'n', '', 'p', ':<C-u>bp<CR>')
noremap sbq<CR> :<C-u>bdelete<CR>
noremap sbqf<CR> :<C-u>bdelete!<CR>
" inc/dec setting
call submode#enter_with('incdec', 'n', '', '<C-a>', '<C-a>')
call submode#enter_with('incdec', 'n', '', '<C-x>', '<C-x>')
call submode#map('incdec', 'n', '', 'a', '<C-a>')
call submode#map('incdec', 'n', '', 'x', '<C-x>')

"
" ::Gtags
"
"map <C-g> :Gtags
"map <C-h> :Gtags -f %<CR>
"map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>

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
xmap <C-k> <Plug>(neosnippets_expand_target)
