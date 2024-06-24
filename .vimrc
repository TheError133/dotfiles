" Plugins.
call plug#begin()

" List your plugins here
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Syntax check.
" Plug 'vim-syntastic/syntastic'
" PEP8 check.
Plug 'nvie/vim-flake8'
" Solarized theme.
Plug 'ericbn/vim-solarized'
" Autocompletion.
Plug 'Valloric/YouCompleteMe'
" LSP server.
Plug 'dense-analysis/ale'
" Prettier for JS + HTML.
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()


" MAIN CONFIG.

" Line numbers.
set nu

" Syntax visualization.
syntax on

" Encoding.
set encoding=utf-8

" Themes.
set background=dark
set termguicolors
colorscheme solarized

" Autocompletion.
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Powerline.
let g:Powerline_symbols = 'fancy'
set laststatus=2

" Split navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" PYTHON CONFIG.

let python_highlight_all=1

" Virtualenv support.
python3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" File config.
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" JAVASCRIPT + HTML CONFIG.

au BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


" JSON.
au BufNewFile,BufRead *.json
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


" LSP SERVER CONFIG.

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'python': ['pyright', 'mypy'],
\}

let g:ale_lint_on_text_changed = 'always'

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

