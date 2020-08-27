call plug#begin()
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'joshdick/onedark.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'rbong/vim-crystalline'
Plug 'pangloss/vim-javascript'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-syntastic/syntastic'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

autocmd vimenter * SyntasticInfo
autocmd vimenter * NERDTree
autocmd CmdlineChanged * SyntasticInfo redraw

syntax on
set background=dark
colorscheme onedark

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

set number
set showmatch
set cursorline

map <C-n> :NERDTreeToggle<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>

let g:indentLine_char = '┆'

"function! StatusLine(...)
"  return crystalline#mode() . crystalline#right_mode_sep('')
"        \ . ' %f%h%w%m%r ' . crystalline#right_sep('', 'Fill') . '%='
"        \ . crystalline#left_sep('', 'Fill') . ' %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
"endfunction
"let g:crystalline_enable_sep = 1
"let g:crystalline_statusline_fn = 'StatusLine'
"let g:crystalline_theme = 'onedark'
"set laststatus=2

"let statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run lint --'

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let NERDTreeQuitOnOpen = 1

"STATUS

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1



