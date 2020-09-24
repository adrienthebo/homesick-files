" .vimrc

" Prevent code execution with malicious modelines
set nomodeline

" Load pathogenized plugins if pathogen is present
" This must be done prior to filetype plugin indent on
if filereadable(expand("~/.vim/autoload/pathogen.vim"))
  source $HOME/.vim/autoload/pathogen.vim
  call pathogen#infect()
end

" The 'eval' feature is built into Vim; always use it. God help you if you're
" actually using Vi.
filetype on
filetype plugin on
filetype indent on

" Syntax is available on all versions of Vim in 2016. Always enable it.
syntax enable
set background=dark

if filereadable(expand("~/.vim/autoload/plug.vim"))
  source $HOME/.vim/autoload/plug.vim
  call plug#begin('~/.vim/bundle')

  if filereadable(expand("~/.vim/plugged.vim"))
    source $HOME/.vim/plugged.vim
  end

  call plug#end()
end

" XXX This was temporarily added to support Java, and might need to happen at
" a specific time in the vim loading sequence. It will live as a comment until
" something better can be worked out.
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
