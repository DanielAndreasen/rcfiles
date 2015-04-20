" Abolish
" in .vim/after/plugin/abolish.vim


" vim-indent-guides
nnoremap <silent><F2> :IndentGuidesToggle<CR>
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_guide_size=1


" Tagbar
nnoremap <F8> :TagbarToggle<CR>


"tpope/vim-commentary
nnoremap <C-c> :Commentary<CR>
vnoremap <C-c> :Commentary<CR>


" Rainbow paranthesis
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*', [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex', [['(', ')'], ['\[', '\]']] ],
    \ [ '*.py', [['(', ')'], ['\[', '\]']] ]
    \ ]


" Syntastic
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_check_on_wq = 0
nnoremap <F3> :SyntasticToggleMode<CR>


" Settings for NERDtree
" Using the NERDtree for file browsing with Crtl+n
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['\.pyc', '\.png', '\.jpeg', '\.pdf', '\.fits']


" Settings for vim-better-whitespace
" Remove and highlight whitespaces
nnoremap <leader>l :StripWhitespace<CR>
autocmd VimEnter * CurrentLineWhitespaceOff hard



let g:SuperTabDefaultCompletionType='<C-n>'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<Down>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" neocomplete, completetion.
let g:neocomplete#enable_at_startup = 1
" Use smartcase
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3
" <CR>: close popup and save indent
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
endfunction
" <TAB> completetion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <BS>: close popup and delete backword char
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
" Ethernal hell if this line below is uncommented!
" Make vim crash if I press a dot '.'
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete


" Settings for vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_extensions = ['branch', 'syntastic', 'whitespace']
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'z', 'warning' ]
    \ ]
let g:airline#extensions#branch#empty_message = 'Y U no git?!'
let g:airline#extensions#whitespace#symbol = 'o'




" Setting for tabular
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a& :Tabularize /&\zs<CR>
  vmap <Leader>a& :Tabularize /&\zs<CR>
endif

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction

inoremap <silent> & &<Esc>:call <SID>ealign()<CR>a
function! s:ealign()
    let p = '^.*&\s.*$'
    if exists(':Tabularize') && getline('.') =~# '^.*&' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^&]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*&\s*\zs.*'))
        Tabularize/&/l1
        normal! 0
        call search(repeat('[^&]*&',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
