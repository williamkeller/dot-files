
filetype plugin indent on
syntax on

" Some basic configurations
set hidden                      " switch buffers without saving
set cmdheight=1
set magic                       " make regular expressions sane
set showmatch                   " show matching brackets


"
" Bundles
"
" Call :PluginInstall in vim after
" making any changes to this section
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'vimwiki/vimwiki'
  Plugin 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf' }
  Plugin 'junegunn/fzf.vim'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rake'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-bundler'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-endwise'
  Plugin 'scrooloose/nerdtree'
  Plugin 'pangloss/vim-javascript'
  Plugin 'mileszs/ack.vim'
  Plugin 'jlanzarotta/bufexplorer'
  Plugin 'kana/vim-textobj-user'
  Plugin 'mhinz/vim-signify'
  Plugin 'janko/vim-test'

  " Language Server support
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
  " Plugin 'autozimu/LanguageClient-neovim', { 'pinned': 1 }
  Plugin 'dense-analysis/ale'

  " Snippet support
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
call vundle#end()


" vimwiki
let g:vimwiki_list = [
\ { 'path': '/Users/william/Documents/wiki' }
\ ]


" Snippets
let g:snipMate = { 'snippet_version' : 1 }
imap <C-K> <Plug>snipMateNextOrTrigger


" Line numbering
set relativenumber
set numberwidth=4

" Swap files and backups
" Don't really need this, since projects are in git
set nobackup
set nowb
set noswapfile

" Signify gutter settings
let g:signify_vcs_list = [ 'git' ]

" Mouse
" Don't need it, don't want it
set mouse=

" Undesirable whitespace
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set list

" Window splits
set equalalways  " make new windows equal in size

" Toggle fold with just spacebar
nnoremap <Space> za
nnoremap z0 :set foldlevel=0<cr>
nnoremap z1 :set foldlevel=1<cr>

let signcolumn=1

"
" Load all of the configuration modules
"
source $HOME/.vim/config/keymaps.vim
source $HOME/.vim/config/visual.vim
source $HOME/.vim/config/semantic.vim
source $HOME/.vim/config/testing.vim
source $HOME/.vim/config/searching.vim
source $HOME/.vim/config/statusline.vim


" Allow for local customization, but don't error out if file is not present
try
  source ./.vimrc.local
catch
endtry


" Allow per-project configuration
set exrc
set secure



" function! SyntaxItem()
"   return synIDattr(synID(line("."),col("."),1),"name")
" endfunction
" set statusline+=%{SyntaxItem()}

