"
" Semantic language support
"

let g:deoplete#enable_at_startup = 1

set pyxversion=3
pythonx import pynvim

" Language Server Protocol
let g:LanguageClient_rootMarkers = {
\   'javascript': ['package.json'],
\   'ruby': ['Gemfile'],
\   'swift': ['Package.swift'],
\   'html': ['package.json']
\ }

let g:LanguageClient_serverCommands={
\   'javascript': ['javascript-typescript-stdio'],
\   'ruby': ['solargraph', 'stdio'],
\   'swift': ['sourcekit-lsp'],
\   'html': ['html-language-server', '--stdio']
\}

nnoremap <silent><leader>lt :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent><leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent><leader>lr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent><leader>le :call LanguageClient_explainErrorAtPoint()<CR>
nnoremap <silent> <leader>lrr :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent><leader>la :call LanguageClient_textDocument_codeAction()<CR>
nnoremap <silent><leader>lss :call LanguageClient_serverStatusMessage()<CR>

let g:LanguageClient_diagnosticsList = 'Location'
