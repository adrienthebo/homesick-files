" Configuration for the syntastic plugin.

" Use passive checking for filetypes with slow checkers.
let g:syntastic_mode_map = { 'passive_filetypes': ['puppet', 'clojure', 'c', 'cpp'] }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
