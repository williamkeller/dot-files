"
" Semantic language support
"

let g:LanguageClient_serverCommands = {
\ 'ruby': ['solargraph', 'stdio'],
\ 'javascript': ['typescript-language-server', '--stdio']
\ }

let g:deoplete#enable_at_startup = 1

" nnoremap <silent><leader>lt :ALEHover<CR>
nnoremap <silent><leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent><leader>lr :call LanguageClient#textDocument_references()<CR>
" nnoremap <silent> <leader>la :ALECodeAction<CR>
" nnoremap <silent> <leader>lar :ALERename<CR>

