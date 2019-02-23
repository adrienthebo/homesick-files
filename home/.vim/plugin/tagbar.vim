if filereadable('/usr/local/bin/ctags')
  let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
elseif filereadable('/snap/bin/ctags')
  let g:tagbar_ctags_bin = '/snap/bin/ctags'
endif
