" plugins.vim
" plugin-specific configurations
" TODO: split particularly large sets into their own file as needed


" NERDTree keymaps
" ----------------------------------------------------------
"  Automatically close NERDTree pane after selection
let NERDTreeQuitOnOpen=1
" Toggle NERDTree with leader + t
nnoremap <leader>t :NERDTree<CR>:NERDTreeFocus<CR>
nnoremap <leader>T :NERDTreeFocus<CR>


" Deoplete
" ----------------------------------------------------------
"  Non-display airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"  Enable deoplete
let g:deoplete#enable_at_startup = 1
" Autocmd to conditionally enable deoplete using tab, c-n and ...?
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" Check for OS type, if mac then set python path
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'


" NERDCommenter
" ----------------------------------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multiline comments
let g:NERDCompactSexyComs = 1
" Align linewise comment delimiters flush left instead of following indents
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful for commenting regions)
let g:NERDCommentEmptyLines = 1
" Trim trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"  Non-display airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
