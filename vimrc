" 
" Author: Daniel Thaagaard Andreasem
" Email: daniel.andreasen@astro.up.pt
" Date: 27/09/2013
" 


"set keywordprg=trs\ {=da}
"set keywordprg=pythonman.py

" =============================================
" ==                                         ==
" ==          Non file-depende stuff         ==
" ==                                         ==
" =============================================

" Disable VI-compatibility (must be first)
set nocompatible

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","


" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" Color scheme
colorscheme blackboard


" Enable syntax highlighting
filetype on
filetype plugin indent on
syntax on


" Showing line numbers and length
set number         " show line numbers
set textwidth=79   " width of document (used by gd)
"set nowrap        " don't automatically wrap on load
"set fo-=t         " don't automatically wrap text when typing
set colorcolumn=79

execute "set colorcolumn=" . join(range(81,335), ',')
hi ColorColumn ctermbg=235


" History and undos
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set smartindent


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()


" New .tex, .py, or -sh files templates
:au BufNewFile *.py r ~/.vim/skel/tmpl.py
:au BufNewFile *.tex r ~/.vim/skel/tmpl.tex
:au BufNewFile *.sh r ~/.vim/skel/tmpl.sh


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
" use: <C-p>
let g:ctrlp_max_height = 15
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_tabpage_position = 'ac'
let g:ctrlp_open_new_file = 't'
set wildignore+=*.pyc
set wildignore+=*.avi
set wildignore+=*.wmv
set wildignore+=*.mp4
set wildignore+=*.mpg
set wildignore+=*.mov
set wildignore+=*.pdf
set wildignore+=*.doc
set wildignore+=*.docx
set wildignore+=*/Videos/*
set wildignore+=*_build/*
set wildignore+=*/coverage/*



" =============================================
" ==                                         ==
" ==              LaTeX stuff                ==
" ==                                         ==
" =============================================


" LaTeX spell checking
au BufRead *tex set spell


" Orther nice LaTeX things
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
let g:Tex_Folding=0  " set to 1 if folding should be on. Don't know how to use it in file
set iskeyword+=:



" Use '[[' and ']]' to begin and end enviroment respectively
imap <buffer> [[           \begin{
imap <buffer> ]]           <Plug>LatexCloseCurEnv



" Use <C-x><C-o> for autocompletion (also references)
let LatexBox_ref_pattern = '\c\\\a*ref\*\?\_\s*{'





" =============================================
" ==                                         ==
" ==              Python stuff               ==
" ==                                         ==
" =============================================

" Treats all cython (.pyx) files as python files
" Allows to comment and uncomment!
au BufNewFile,BufRead *.pyx set filetype=python


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'solarized256'


" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#related_names_command = "<leader>z"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 1
let g:jedi#use_splits_not_buffers = "left"
autocmd FileType python setlocal completeopt-=preview


" =============================================
" ==                                         ==
" ==            Own functions                ==
" ==                                         ==
" =============================================



" Comment using <C-a>
" Uncomment using <C-b>
map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>

function! Comment()
	let ft = &filetype
	if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl' || ft == 'cython'
		silent s/^/\#/
	elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
		silent s:^:\/\/:g
	elseif ft == 'tex'
		silent s:^:%:g
	elseif ft == 'vim'
		silent s:^:\":g
	endif
endfunction
function! Uncomment()
	let ft = &filetype
	if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl' || ft == 'cython'
		silent s/^\#//
	elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
		silent s:^\/\/::g
	elseif ft == 'tex'
		silent s:^%::g
	elseif ft == 'vim'
		silent s:^\"::g
	endif
endfunction
