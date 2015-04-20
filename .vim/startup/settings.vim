" Spaces and tabs
set tabstop=4                   " a tab character is read as 4 spaces
set softtabstop=4               " inster 4 spaces when editing
set expandtab                   " tabs become 4 spaces
" UI config
set number                      " show line numbers
set cursorline                  " Highlight current line
filetype indent on              " load filetype-specific indent files
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw the screen only when we need to (faster macros)
set showmatch                   " highlight matching [{()}]
" Searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
" Folding
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max
set foldmethod=indent           " fold based on indent level

set shiftwidth=4
set shiftround
set scrolloff=2                " Keep 10 lines above and below when scrooling
set autoindent
set smartindent
set textwidth=79                " width of document (used by gd)
set nowrap                      " don't automatically wrap on load
set fo+=t                       " don't automatically wrap text when typing
set history=700                 " Set the history and undo level
set undolevels=700
set nobackup                    " Disable the stupid backup files
set nowritebackup
set noswapfile
set backspace=indent,eol,start  " Allow us to use backspace
set list

set formatprg=par

hi Cursorline term=bold cterm=bold
set listchars=tab:▸\ ,eol:¬

set clipboard=unnamed
