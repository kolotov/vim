set number   
syntax on

set backspace=indent,eol,start

filetype plugin indent on

let g:pymode_python = 'python3'

"====== Plugins ========
call plug#begin('~/.vim/plugged')

Plug 'stephpy/vim-php-cs-fixer'
Plug 'vim-vdebug/vdebug'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'

"Plug 'StanAngeloff/php.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'jlanzarotta/bufexplorer'

Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"====== gruvbox =====
autocmd vimenter * ++nested colorscheme gruvbox

"==== Air Line =====
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

"==== ALE =====
let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'
let g:ale_fixers = {'php': ['php-cs-fixer']}




