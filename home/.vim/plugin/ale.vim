let g:ale_completion_enabled = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 1

let g:ale_linters = {
      \ 'go': ['gobuild', 'gofmt', 'golint', 'golangserver'],
      \ 'rust': ['rls', 'cargo']
      \}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
