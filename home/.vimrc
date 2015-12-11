" .vimrc
scriptencoding utf-8

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
