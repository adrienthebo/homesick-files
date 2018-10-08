" Leader key bindings

" Binds F3 to clear the search
nnoremap <silent> <Leader>c :let @/=""<CR>

" Clear trailing whitespace
nnoremap <silent> <Leader>s :%s/\s\+$//<CR>

" toggle list
nnoremap <silent> <Leader>l :set list!<CR>

nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :CtrlP<CR>
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>
nnoremap <silent> <Leader>t :TagbarToggle<CR>

nnoremap <silent> <Leader>g :ALEGoToDefinition<CR>
nnoremap <silent> <Leader>h :ALEHover<CR>
nnoremap <silent> <Leader>d :ALEDetail<CR>
