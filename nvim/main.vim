" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

" Initialize plugin system
call plug#end()


" init nerdtree
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:plug_window = 'noautocmd vertical topleft new'
let NERDTreeShowHidden=1
let NERDTreeWinPos='right'

" init ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set grepprg=rg\ --color=never
let g:ctrlp_user_command = 'rg %s --hidden --files --glob ""'
let g:ctrlp_use_caching = 0

" init vim-go
au filetype go inoremap <buffer> . .<C-x><C-o>

"common setting
" Switch between different windows by their direction`
noremap <C-h> :tabprevious<CR>
noremap <C-l> :tabnext<CR>
noremap <Tab> :wincmd w<CR>
