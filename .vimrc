"
" Author: Daniel Thaagaard Andreasen
" Email: daniel.andreasen@astro.up.pt
" Date: 01/04/2014
"

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'ntpeters/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized.git'

"" Python
Plugin 'nvie/vim-flake8'

"" LaTeX/writing
Plugin 'DanielAndreasen/vim-tex-fold'
Plugin 'davidbeckingsale/writegood.vim'

"" General
" Plugin 'junegunn/seoul256.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neocomplete.vim'
Plugin 'oblitum/rainbow'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/splice.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'

"" GIT stuff
Plugin 'tpope/vim-fugitive'  " Need this to show branch in vim
Plugin 'airblade/vim-gitgutter'
call vundle#end()


filetype on                            " Enable syntax highlighting
syntax on


" Color scheme
" colorscheme gruvbox
" colorscheme pychimp

" For solarized
" set background=dark
" let g:solarized_termtrand=1
" colorscheme solarized

source ~/.vim/startup/commads.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/autocmd.vim
source ~/.vim/startup/plugins.vim
