autocmd BufNewFile,BufRead *.io
      \ if &ft =~# '^\%(conf\|modula2\)$' |
      \   set ft=io |
      \ else |
      \   setfi io |
      \ endif
