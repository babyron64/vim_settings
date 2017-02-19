"
" ::system
"
" Disable 's' inserting to use 's' as a prefix
map s <NOP>
" base
noremap <Space>q :<C-u>q<CR>
noremap <Space>w :<C-u>w<CR>
noremap <Space>qf :<C-u>q!<CR>
noremap <Space>sw :<C-u>wq<CR>
" cursor behavior
noremap j gj
noremap k gk
noremap <S-h> ^
noremap <S-l> $
nnoremap <Space> i<Space><ESC>
nnoremap <CR> $a<CR><ESC>
" pane setting
nnoremap ps :<C-u>sp<CR>
nnoremap pv :<C-u>vsp<CR>
nnoremap pn <C-w>
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
" tab setting
nnoremap tn :<C-u>tabnew<CR>
nnoremap tt gt
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
