set clipboard=unnamedplus
call plug#begin('~/.config/nvim/plugged')
Plug 'hashivim/vim-terraform'
Plug 'dense-analysis/ale'
call plug#end()
let g:ale_linters = {
\   'terraform': ['tflint'],
\}
