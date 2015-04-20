if exists("did_load_filestypes")
    finish
endif

augroup filetype detect
    au! BufRead,BufNewFile *.tpp set filetype tpp
augroup END
