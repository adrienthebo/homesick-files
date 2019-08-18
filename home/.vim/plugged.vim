" Graphical
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'

" Language support
Plug 'rodjek/vim-puppet'
Plug 'elzr/vim-json'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-gfm-syntax'
Plug 'cespare/vim-toml'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'hashivim/vim-terraform'
Plug 'chrisbra/csv.vim'
Plug 'artur-shaik/vim-javacomplete2'

" Deprecated in favor of vim-gfm-syntax
"Plug 'plasticboy/vim-markdown'
"Plug 'scrooloose/syntastic' " Deprecated in favor of ale

" Code completion
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
"Deprecated in favor of ALE
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --system-libclang --rust-completer --go-completer' }

" Utility modules

" Temporarily disabled - ctags is not available on faraday
"Plug 'majutsushi/tagbar'
"Plug 'ludovicchabant/vim-gutentags'

Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'kshenoy/vim-signature'
Plug 'mtth/scratch.vim'
