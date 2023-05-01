"
" Semantic language support
"
nnoremap <silent><leader>ld   :ALEGoToDefinition<CR>
nnoremap <silent><leader>lr   :ALEFindReferences<CR>
nnoremap <silent><leader>ls   :ALESymbolSearch<CR>
nnoremap <silent><leader>l,   :ALEHover<CR>
nnoremap <silent><leader>la   :ALECodeAction<CR>

let g:ale_completion_enabled = 1
let g:ale_virtualtext_cursor = 'disabled'
let g:deoplete#enable_at_startup = 1

set completeopt=menu,menuone,preview,noselect,noinsert


" vim-rails doesn't play nice with request specs; let's fix that
let g:rails_projections = {
\ "app/controllers/*_controller.rb": {
\   "test": [
\     "spec/controllers/{}_controller_spec.rb",
\     "spec/requests/{}_spec.rb"
\   ],
\ },
\ "spec/requests/*_spec.rb": {
\   "alternate": [
\     "app/controllers/{}_controller.rb",
\   ],
\ }}
