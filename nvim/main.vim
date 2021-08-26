" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'

" Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

" Initialize plugin system
call plug#end()


" init colorSchema
syntax on
let g:onedark_terminal_italics = 1
colorscheme onedark

" init nerdtree
" nnoremap <leader>ft :NERDTreeToggle<CR>
" nnoremap <leader>ff :NERDTreeFind<CR>
" nnoremap <leader>fn :NERDTreeFocus<CR>
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let g:plug_window = 'noautocmd vertical topleft new'
" let NERDTreeShowHidden=1
" let NERDTreeWinPos='right'

" init ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set grepprg=rg\ --color=never
let g:ctrlp_user_command = 'rg %s --hidden --files --glob ""'
let g:ctrlp_use_caching = 0

" init vim-go
"

" init coc
set signcolumn=number
set hidden
set shortmess+=c
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>ft :CocCommand explorer<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

"common setting
" Switch between different windows by their direction`
noremap <C-h> :tabprevious<CR>
noremap <C-l> :tabnext<CR>
noremap <Tab> :wincmd w<CR>

vnoremap \y "*y
