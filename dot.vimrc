
filetype plugin indent on
syntax on


" Remap some the leader key to something closer 
let mapleader = ","
let g:mapleader = ","


" Unmap the arrow keys; real men use motion keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Some basic configurations
set hidden                      " switch buffers without saving
set backspace=eol,start,indent  " make backspace sane
set cmdheight=1
set magic                       " make regular expressions sane
set showmatch                   " show matching brackets


" Bundles
set rtp+=~/.vim/bundle/Vundle.vim


" Call :PluginInstall in vim after
" making any changes to this section
call vundle#begin()
  Plugin 'vimwiki/vimwiki'
  Plugin 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf' }
  Plugin 'junegunn/fzf.vim'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rake'
  Plugin 'tpope/vim-bundler'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-endwise'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'scrooloose/nerdtree'
  Plugin 'pangloss/vim-javascript'
  Plugin 'mileszs/ack.vim'
  Plugin 'jlanzarotta/bufexplorer'
  Plugin 'kana/vim-textobj-user'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'itchyny/lightline.vim'
  Plugin 'mhinz/vim-signify'
  Plugin 'janko/vim-test'
  Plugin 'michal-h21/vim-zettel'
  Plugin 'codota/tabnine-vim'

  " Language Server support
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
  Plugin 'autozimu/LanguageClient-neovim', { 'pinned': 1 }
call vundle#end()


"
" Plugin Configuration
"


" fzf
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>


" vimwiki
let g:vimwiki_list = [
\ { 'path': '/Users/william/Documents/wiki' }
\ ]


" nerdtree
map <leader>d :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']


" Extend the matching key % to more kinds of blocks
runtime macros/matchit.vim


" ack
" Might be a good idea to do a check to see if ag is present on the system, and if not
" fall back to ack. It's actually a problem when I pull this down on to a new machine
" where ag isn't installed.
let g:ackprg = 'ag --vimgrep'  " ag is much faster than ack


" buffer explorer
map <leader>bb :BufExplorer<cr>


"
" Colors
"
" Slightly modified iTerm theme "Adventure". I bumped the darkblue color
" to make it a little darker.

" Basic theme
colorscheme harlequin
set background=dark
set colorcolumn=90
highlight ColorColumn ctermbg=darkgray

" Cursor line
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine cterm=bold guibg=#303030 ctermbg=DarkBlue

" Turn of fugly scrollbars in MacVim
set guioptions=


" Swap files and backups
" Don't really need this, since projects are in git
set nobackup
set nowb
set noswapfile


" Line numbering
set relativenumber
set numberwidth=4


" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
map <silent> <leader><cr> :noh<cr>  " clear search highlighting


" Tabs and indentation
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set textwidth=90
set autoindent
set smartindent


" Signify gutter settings
let g:signify_vcs_list = [ 'git' ]


" Status line
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'FugitiveHead'
\ },
\ }
set laststatus=2
set noshowmode  " Don't need mode in two places, so turn off the default

map <leader>t :!ctags -R <CR><CR>


" Snipmate
let g:snipMate = { 'snippet_version' : 1 }


" Mouse
" Don't need it, don't want it
set mouse=

" Undesirable whitespace
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set list


" Window splits
set equalalways  " make new windows equal in size

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Buffer management
map <leader>bd :Bclose<cr>  " Close the current buffer
map <leader>ba :1,300 bd!<cr> " Close all the buffers


" Toggle fold with just spacebar
nnoremap <Space> za
nnoremap z0 :set foldlevel=0<cr>
nnoremap z1 :set foldlevel=1<cr>



" set rtp+=~/.vim/bundles/LanguageClient-neovim
let g:deoplete#enable_at_startup = 1

set pyxversion=3
pythonx import pynvim

" Language Server Protocol
let g:LanguageClient_rootMarkers = {
\   'javascript': ['package.json'],
\   'ruby': ['Gemfile'],
\   'swift': ['Package.swift']
\ }

let g:LanguageClient_serverCommands={
\   'javascript': ['javascript-typescript-stdio'],
\   'ruby': ['solargraph', 'stdio'],
\   'swift': ['sourcekit-lsp']
\}


nnoremap <leader>lt :call LanguageClient_textDocument_hover()<CR>
nnoremap <leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <leader>lr :call LanguageClient_textDocument_references()<CR>
nnoremap <leader>le :call LanguageClient#explainErrorAtPoint()<CR>
nnoremap <silent> <leader>lrr :call LanguageClient#textDocument_rename()<CR>

let signcolumn=1


" Testing
nnoremap tf :TestFile<CR>
nnoremap tt :TestLast<CR>
nnoremap ts :TestSuite<CR>
nnoremap tn :TestNearest<CR>


" Turn the background transparent, just for fun
let t:is_transparent = 1
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    hi EndOfBuffer term=bold ctermfg=242 ctermbg=234 gui=bold guifg=Blue 
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
:call Toggle_transparent_background()


" Allow for local customization, but don't error out if file is not present
try
  source ./.vimrc.local
catch
endtry


" Allow per-project configuration
set exrc
set secure

