set completeopt=menu,menuone,preview,noselect,noinsert
set omnifunc=ale#completion#OmniFunc

let g:ale_completion_enabled = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_rust_rls_executable = expand("~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rls")

let g:ale_linters = {
      \ 'go': ['gobuild', 'gofmt', 'golint', 'golangserver'],
      \ 'rust': ['rls']
      \}

let g:ale_fixers = {
  \ 'ruby': ['rubocop'],
  \ 'puppet': ['puppetlint']
  \}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
