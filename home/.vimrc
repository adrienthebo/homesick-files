" .vimrc
scriptencoding utf-8

" Load pathogenized plugins if pathogen is present
" This must be done prior to filetype plugin indent on
if filereadable(expand("~/.vim/autoload/pathogen.vim"))
  source $HOME/.vim/autoload/pathogen.vim
  call pathogen#infect()
end

" Syntax is available on all versions of Vim in 2016. Always enable it.
syntax enable

" The 'eval' feature is built into Vim; always use it. God help you if you're
" actually using Vi.
filetype on
filetype plugin on
filetype indent on
