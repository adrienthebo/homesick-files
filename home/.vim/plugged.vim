" Graphical
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'yggdroot/indentline'
"Plug 'nathanaelkane/vim-indent-guides'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Language support
Plug 'rodjek/vim-puppet'
Plug 'elzr/vim-json'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-gfm-syntax'
Plug 'cespare/vim-toml'
Plug 'python-mode/python-mode', { 'branch': 'develop' }

" Performance issues with large files
"Plug 'chrisbra/csv.vim'
" Lol tickscript
"Plug 'nathanielc/vim-tickscript'
Plug 'chrisbra/csv.vim'
Plug 'hashivim/vim-terraform'

""" Currently unused
" Plug 'artur-shaik/vim-javacomplete2'
" Plug 'ianks/vim-tsx'
" Plug 'leafgarland/typescript-vim'

" Code completion
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
Plug 'tpope/vim-abolish'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'sebastianmarkow/deoplete-rust'

" Utility modules

" Temporarily disabled - ctags is not available on faraday
"Plug 'majutsushi/tagbar'
"Plug 'ludovicchabant/vim-gutentags'

Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'kshenoy/vim-signature'
Plug 'mtth/scratch.vim'
