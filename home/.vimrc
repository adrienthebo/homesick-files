" .vimrc
scriptencoding utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic behavior configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=500
set nobackup
set ruler
set nowrap

" Configure tabbing
set sts=2
set shiftwidth=2
set smartindent
set expandtab

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

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
