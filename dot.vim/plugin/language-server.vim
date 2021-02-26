"
" Configuration related to using language server protocol with vim
"

let g:deoplete#enable_at_startup = 1

set pyxversion=3
pythonx import pynvim

" How to identify projects
let g:LanguageClient_rootMarkers = {
\   'javascript': ['package.json'],
\   'ruby': ['Gemfile'],
\   'swift': ['Package.swift']
\ }

" How to run the language server
let g:LanguageClient_serverCommands={
\   'javascript': ['javascript-typescript-stdio'],
\   'ruby': ['solargraph', 'stdio'],
\   'swift': ['sourcekit-lsp']
\}

" Map keys to make it easier
" TODO - LSP can do a lot more than I have aliased here. Figure it out.
nnoremap <leader>lt :call LanguageClient_textDocument_hover()<CR>
nnoremap <leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <leader>lr :call LanguageClient_textDocument_references()<CR>
nnoremap <leader>le :call LanguageClient#explainErrorAtPoint()<CR>
nnoremap <silent> <leader>lrr :call LanguageClient#textDocument_rename()<CR>
