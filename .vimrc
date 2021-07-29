set number   
syntax on

set encoding=utf-8
set updatetime=300

" Give more space for displaying messages.
set cmdheight=2

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Some basic PSR code style rules
set tabstop=4           " Tab width
set softtabstop=4       " Soft tab width
set shiftwidth=4        " Shift width
set expandtab           " Use spaces instead of tabs


set backspace=indent,eol,start

filetype plugin indent on

let g:pymode_python = 'python3'



function Open_term()
    botright term
    resize 7
endfunction
:command -nargs=0 Term exec Open_term()


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


"==== NERDTree ===
"Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

