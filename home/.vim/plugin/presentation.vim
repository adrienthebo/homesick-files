" Configure vim/gvim presentation

" List characters
if (&termencoding == "utf-8") || has("gui")
  set listchars=tab:»·,trail:·
else
  set listchars=tab:>.,trail:.
end
set list

set nowrap

" Configure gui options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

if has("gui")
  colorscheme desert
else
  colorscheme industry
endif

" Better scrolling navigation
set scrolloff=2
set sidescroll=8
set sidescrolloff=4

" Configure folding
set foldenable
set foldmethod=indent
set foldlevelstart=99
