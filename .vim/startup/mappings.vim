" Rebind <Leader> key to ,
let mapleader = ","
let maplocalleader = ","

" Smash escape
inoremap jk <Esc>
inoremap kj <Esc>

" Movements
" move to beginning/end of line
nnoremap E $
" This makes more sense for me when navigating...
nnoremap gg ggzz
nnoremap G Gzz
" highlight last inserted text
nnoremap gV `[v`]


" Press F5 before pasting numerous lines
set pastetoggle=<f5>
" Use F6 to increment number under cursor with one
nnoremap <silent> <f6> :<c-u>s/\d*\%#\d/\=(submatch(0)+v:count1)<cr>``:nohl<cr>
" Edit my vimrc easily
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Never enter Ex mode again!
nnoremap Q <nop>

" Remove highlights
nnoremap <silent><leader><space> :nohl<cr>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv


nnoremap <leader>n <esc>:tabprevious<CR>
nnoremap <leader>m <esc>:tabnext<CR>
nnoremap <C-h> <C-w><left>
nnoremap <C-l> <C-w><right>
nnoremap <C-k> <C-w><up>
nnoremap <C-j> <C-w><down>


" resizing the splits
inoremap <left> <esc><c-w><i
inoremap <right> <esc><c-w>>i
inoremap <up> <esc><c-w>+i
inoremap <down> <esc><c-w>-i

nnoremap <left> <c-w>>
nnoremap <right> <c-w><
nnoremap <up> <c-w>+
nnoremap <down> <c-w>-

vnoremap <up> <NOP>
vnoremap <down> <NOP>
vnoremap <left> <NOP>
vnoremap <right> <NOP>

nnoremap t o<Esc>k
nnoremap T O<Esc>j

" Open and close folds
nnoremap <Space> za

" Use '[[' and ']]' to begin and end enviroment respectively
inoremap <buffer> [[           \begin{
inoremap <buffer> ]]           <Plug>LatexCloseCurEnv
