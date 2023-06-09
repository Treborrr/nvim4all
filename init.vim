" Theme
packadd! dracula
colorscheme dracula
syntax enable
set updatetime=300
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set noshowmode
set signcolumn=no

" Plug Installer : : : :
"

call plug#begin('C:\Users\la413\AppData\Local\nvim\plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'itchyny/lightline.vim'

" Git
Plug 'tpope/vim-fugitive'

" tree
Plug 'scrooloose/nerdtree'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" autocomplete

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'ap/vim-css-color'

call plug#end()

"=========================
"========> MAPS <=========
"=========================
"
"=== === === === === === =
let mapleader=" "
"= === === === === === === 
"
"========> SAVE <=========
nmap <Leader>w :w<CR> 
"=========================
"
"========> QUIT <=========
nmap <Leader>q :q<CR>
"=========================
"
"==> :PlugInstall BIND <==
nmap <Leader>p :PlugInstall<CR>
"=========================
"             
"=======> RESIZE <======== 
nnoremap <Leader>> 10<C-w>
nnoremap <Leader>< 10<C-w>

"===> EasyMotion BIND <===
nmap <Leader>s <Plug>(easymotion-s2)
"
"===> NERDTree Config <===
" Cuando abra nerdtree y seleccione un archivo, este se cierre
let NERDTreeQuitOnOpen=1
nmap <Leader>t :NERDTreeToggle<CR>
"=========================
"
"==> Auto-complete Coc <== 
" "[Left], [Right], [Up], or [Down]" + <TAB> = ✔ Auto complete
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

