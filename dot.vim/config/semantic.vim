"
" Semantic language support
"

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled=1

nnoremap <silent><leader>lt :ALEHover<CR>
nnoremap <silent><leader>ld :ALEGoToDefinition<CR>
nnoremap <silent><leader>lr :ALEFindReferences<CR>
nnoremap <silent> <leader>la :ALECodeAction<CR>
nnoremap <silent> <leader>lar :ALERename<CR>

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? 'OK' : printf(
        \   ' %d⚠️  %d💀 ',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

let g:ale_sign_error = '➤'
let g:ale_sign_warning = '➤'
