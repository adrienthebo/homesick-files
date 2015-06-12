" Configure vim/gvim presentation

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

" Better scrolling navigation
set scrolloff=2
set sidescroll=8
set sidescrolloff=4
