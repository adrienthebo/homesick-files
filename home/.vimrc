" .vimrc
scriptencoding utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic behavior configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=500
set nobackup
set ruler
set nowrap
set bs=indent,eol,start

" Better scrolling navigation
set scrolloff=2
set sidescroll=8
set sidescrolloff=4

" Configure tabbing
set sts=2
set shiftwidth=2
set smartindent
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure presentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" List characters
if (&termencoding == "utf-8") || has("gui")
  set listchars=tab:»·,trail:·
else
  set listchars=tab:>.,trail:.
end
set list

" Configure gui options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

if has("gui")
  colorscheme desert
else
  colorscheme elflord
endif

" Turn off system bell
set noerrorbells
set visualbell
set t_vb=

" Configure prompt.
set laststatus=2
set statusline=
set statusline+=%2*%-3.3n%0*\                " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%1*%m%r%w%0*               " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding},                " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%2*0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Braindamage fixes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Clear F1 help bind
nnoremap <F1> :echo<CR>
inoremap <F1> <C-o>:echo<CR>

" Fix backspacing
inoremap  
cnoremap  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hacked in file configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au BufRead,BufNewFile *.md          set wrap linebreak spell filetype=ghmarkdown textwidth=80
au BufRead,BufNewFile *.mkd         set wrap linebreak spell filetype=ghmarkdown textwidth=80
au BufRead,BufNewFile *.markdown    set wrap linebreak spell filetype=ghmarkdown textwidth=80

au BufRead,BufNewFile Vagrantfile.* set filetype=ruby
au BufRead,BufNewFile Vagrantfile   set filetype=ruby

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Binds F3 to clear the search
nnoremap <silent> <Leader>c :let @/=""<CR>

" Clear trailing whitespace
nnoremap <silent> <Leader>s :%s/\s\+$//<CR>

" toggle list
nnoremap <silent> <Leader>l :set list!<CR>

" toggle list
nnoremap <silent> <Leader>h :set hlsearch!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load pathogenized plugins if pathogen is present
" This must be done prior to filetype plugin indent on
if filereadable(expand("~/.vim/autoload/pathogen.vim"))
  source $HOME/.vim/autoload/pathogen.vim
  call pathogen#infect()
end

if has("folding")
  set foldenable
  set foldmethod=indent
  set foldlevelstart=99
endif

if has("syntax")
    syntax enable
endif

if has("eval")
  filetype on
  filetype plugin on
  filetype indent on
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration. Relevant only if the plugins are installed.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-gnupg
let g:GPGPreferArmor = 1

nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :CtrlP<CR>
nnoremap <silent> <Leader>a :CtrlPClearAllCaches<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" NO REALLY TURN OFF ERROR BELL
set noerrorbells
set novisualbell
set t_vb=
