"""""""""""""""""""
" General Setting "
"""""""""""""""""""
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
syntax on
set ruler
set bs=indent,eol,start
set autoindent
set smartindent
set pastetoggle=<F8>
set nowrap
set textwidth=0
set cursorline
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=1
set scrolloff=3
set ignorecase
set smartcase
set incsearch
set hlsearch
set expandtab
set wildmenu
set wildmode=list:longest,full
set wildignore=*.swp,*.swo,*.class
set mouse=a
set ttymouse=xterm2
set noswapfile
set nobackup
set list
set listchars=tab:»\ ,trail:·,extends:>,precedes:<
set clipboard=unnamed

let mapleader=','
let maplocalleader=','
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-color-spring-night'
Plug 'junegunn/seoul256.vim'
Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'Rip-Rip/clang_complete'
Plug 'vim-cpp-enhanced-highlight'
Plug 'qpkorr/vim-bufkill'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yegappan/grep'
Plug 'terryma/vim-multiple-cursors'
Plug 'rhysd/clever-f.vim'
Plug 'majutsushi/tagbar'
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'
Plug 'lervag/vimtex'
Plug 'junegunn/vim-journal'
call plug#end()


""""""""""""""""""
" Plugin Setting "
""""""""""""""""""
" 0. General
let Grep_Default_Options='-rn'
nnoremap <silent> <F3> :Rgrep<CR>

nnoremap <silent> <F9> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" 1. Coloer Scheme

" Spring Night
"let &t_8f =
""\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b =
""\<Esc>[48;2;%lu;%lu;%lum"
"set termguicolors
" Seoul256

let g:seoul256_background=236
colo seoul256
let g:airline_theme='zenburn'

set laststatus=2
highlight CursorLine cterm=none
"highlight ColorColumn ctermbg=8

" 2. C,C++
let g:UltiSnipsUsePythonVersion=2
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
let g:clang_close_preview=1

let g:ctrlp_user_command=['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_experimental_template_highlight=1
let g:cpp_concepts_highlight=1

" 3. Python
let g:jedi#use_splits_not_buffers="right"
let python_highlight_all=1

" 4. Latex
let g:vimtex_compiler_latexmk={'callback':0, 'continuous':0}
let g:vimtex_quickfix_open_on_warning=0
let g:vimtex_view_method='skim'

" 5. Text
au BufNewFile,BufRead *.txt set filetype=journal
