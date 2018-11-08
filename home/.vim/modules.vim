" Graphical
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'jremmen/vim-ripgrep'
Plug 'easymotion/vim-easymotion'

" Language support
Plug 'elzr/vim-json'
Plug 'rust-lang/rust.vim'
Plug 'hashivim/vim-terraform'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'w0rp/ale'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
"Plug 'scrooloose/syntastic' " Deprecated in favor of ale

" Code completion
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --system-libclang --rust-completer --go-completer' }
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'

" Utility modules
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'kshenoy/vim-signature'
