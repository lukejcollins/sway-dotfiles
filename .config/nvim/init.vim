set clipboard=unnamedplus
call plug#begin('~/.config/nvim/plugged')
Plug 'hashivim/vim-terraform'
Plug 'dense-analysis/ale'
call plug#end()
let g:ale_linters = {
\   'terraform': ['tflint'],
\   'python': ['flake8', 'pylint'],
\}
let g:ale_fixers = {}
let g:ale_fixers['python'] = ['black']
let g:ale_python_black_options = '--line-length 79'
nnoremap <F5> :ALEFix<CR>

