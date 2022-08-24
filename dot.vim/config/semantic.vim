"
" Semantic language support
"

" Deoplete relies on python3, which brew helpfully installs multiple versions of.
" If you get stuck (again) on how to get deoplete do the following
" Figure out which python vim is trying to run with :pythonx print(sys.version)
" Find that version of python in the brew Cellar hierarchy
" Use `pip3 install --user pynvim` to install the needed library
" \ 'ruby': ['solargraph', 'stdio'],
" let g:LanguageClient_serverCommands = {
" \ 'ruby': ['solargraph', 'stdio'],
" \ 'javascript': ['typescript-language-server', '--stdio'],
" \ 'rust': ['rls']
" \ }

" let g:deoplete#enable_at_startup = 1

" nnoremap <silent><leader>lt   :call languageClient#textDocument_hover()<CR>
" nnoremap <silent><leader>ld   :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent><leader>lr   :call LanguageClient#textDocument_references()<CR>
" nnoremap <silent><leader>lrr  :call LanguageClient#textDocument_rename()<CR>
" nnoremap <silent><leader>lf   :call LanguageClient#textDocument_formatting()<CR>
" nnoremap <silent><leader>la   :call LanguageClient#textDocument_codeAction()<CR>
"
" nnoremap <silent><leader>lt   :call languageClient#textDocument_hover()<CR>
nnoremap <silent><leader>ld   :ALEGoToDefinition<CR>
nnoremap <silent><leader>lr   :ALEFindReferences<CR>
nnoremap <silent><leader>ls   :ALESymbolSearch<CR>
nnoremap <silent><leader>l,   :ALEHover<CR>
" nnoremap <silent><leader>lf   :call LanguageClient#textDocument_formatting()<CR>
nnoremap <silent><leader>la   :ALECodeAction<CR>
