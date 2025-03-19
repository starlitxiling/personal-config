syntax on
set number
filetype indent on
set shiftwidth=4
set softtabstop=4
set ignorecase


" 设置 <Space> 键为 leader 键
let mapleader = " "
filetype plugin indent on

" 使用 vim-plug 的示例
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'TTWShell/legolas-vim'
" 其他插件...
call plug#end()

let g:indentLine_enabled = 1		" 使插件生效
let g:indentLine_char = '|'		" 设置缩进线符号
let g:indentLine_conceallevel = 2	" 使插件正常运行

" autocmd VimEnter * NERDTree

" Normal 模式下，<leader>/ 注释或取消注释当前行
nnoremap <leader>/ :Commentary<CR>

" Visual 模式下，<leader>/ 注释或取消注释选中行
xnoremap <leader>/ :Commentary<CR>


inoremap <CapsLock> <Esc>
nnoremap <CapsLock> <Esc>
cnoremap <CapsLock> <Esc>
