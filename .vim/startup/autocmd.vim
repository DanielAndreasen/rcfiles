augroup sweetcat_group
    autocmd!
    " SWEET-Cat things. Most important, remove the end-of-line for *.rdb. No need
    " for emacs for that!
    autocmd BufRead,BufEnter *.rdb setlocal noendofline binary
    autocmd BufRead,BufEnter,BufNewFile *.rdb setlocal noexpandtab | setlocal noautoindent
augroup END


augroup misc_group
    autocmd!
    " Source vimrc on write
    autocmd BufWritePost .vimrc source $MYVIMRC
    " Resize splits when the window is resized
    autocmd VimResized * exe "normal! \<c-w>="
    " New .tex, .py, or .sh files templates
    autocmd BufNewFile *.py 0r ~/.vim/skel/tmpl.py
    autocmd BufNewFile *.tex 0r ~/.vim/skel/tmpl.tex
    autocmd BufNewFile *.sh 0r ~/.vim/skel/tmpl.sh
    " Set relativenumber when in normal mode
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END


augroup python_group
    autocmd!
    " Treats all cython (.pyx) files as python files. Allows to comment and uncomment!
    autocmd BufNewFile,BufRead *.pyx set filetype=python
    " For making else: work the right way with correct highlighting
    autocmd BufEnter,BufRead,BufNewFile filetype python set iskeyword-=:
    " For showing the border of where text should brake
    highlight ColorColumn ctermbg=red
    autocmd BufEnter,BufRead,BufNewFile filetype python call matchadd('ColorColumn', '\%81v', 100)
    " This beauty remembers where you were the last time you edited the file, and returns to the same position.
    autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
    autocmd FileType python setlocal commentstring=#\ %s
    " Change the colorscheme
    autocmd BufEnter,BufRead,BufNewFile *.py colorscheme pychimp
augroup END


augroup latex_group
    autocmd!
    " LaTeX spell checking
    autocmd BufRead filetype latex set spell
    " Other nice LaTeX things
    let g:tex_flavor='latex'
    autocmd BufRead,BufEnter,BufNewFile filetype latex set iskeyword+=:
    " For showing the border of where text should brake
    highlight ColorColumn ctermbg=red
    autocmd BufEnter,BufRead,BufNewFile filetype latex call matchadd('ColorColumn', '\%81v', 100)
    autocmd BufEnter,BufRead,BufNewFile *.tex set background=dark
    autocmd BufEnter,BufRead,BufNewFile *.tex let g:solarized_termtrand=1
    autocmd BufEnter,BufRead,BufNewFile *.tex colorscheme solarized
    " autocmd VimEnter filetype latex colorscheme solarized
augroup END



augroup markdown
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
    autocmd BufNewFile,BufRead *.md,*.markdown set spell
augroup END
