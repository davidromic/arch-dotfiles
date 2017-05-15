" init.vim/.vimrc
" David Romic <davidromic@gmail.com>
" NeoVIM

""" nvim settings
set number                                  "line numbering
set tabstop=4
set smartcase
set expandtab
set shiftwidth=4

set mouse=a                                 "enable mouse
set splitbelow
set splitright
set guicursor=n:blinkwait400-blinkon400-blinkoff250     "blink cursor in normal mode
set undofile
set undodir=~/.config/nvim/temp/undodir
set completeopt=preview                     "something about type completion
set nohlsearch                              "turn off search highlight
set background=dark
" Reverse colors and highlight them on visual select
" TODO: check term, cterm, ctermbg
hi Visual term=reverse cterm=Bold,reverse ctermbg=Black

" remaps
map <C-a> <esc>ggVG<CR>

"Remove all trailing whitespace on close
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre *.h,*.c,*.java,*.py :call <SID>StripTrailingWhitespaces()
nnoremap <F5> :call <SID>StripTrailingWhitespaces()<CR>
" yank to system clipboard, install xclip and xsel
vnoremap <C-c> "+y


""" plugins
" TODO: neomake, tagbar, syntastic, ctrlpvim
call plug#begin()
    Plug 'tpope/vim-fugitive'               "git wrapper
    Plug 'tpope/vim-sensible'               "sensible defaults that we all agree on
    Plug 'benekastah/neomake'               "async runner, linting and stuff
    Plug 'scrooloose/nerdtree'              "tree view
    Plug 'scrooloose/nerdcommenter'         "easily comment out lines and whatnot
    Plug 'majutsushi/tagbar'                "creates tags: functions, classes..
    Plug 'dhruvasagar/vim-table-mode'       "create nice ascii tables
    Plug 'vim-airline/vim-airline'          "airline bar, git and stuff
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'           "git diff (add/remove) line marker
    Plug 'Valloric/YouCompleteMe'
    Plug 'jiangmiao/auto-pairs'             "add/delete brackets in pairs
    "Plug 'ctrlpvim/ctrlp.vim'               "fuzzy matching user input

    Plug 'elixir-lang/vim-elixir'
    Plug 'rust-lang/rust.vim'

call plug#end()


""" plugin settings
" use powerline fonts
let g:airline_powerline_fonts = 1

" always display sidebar
let g:gitgutter_sign_column_always = 1

" YCM
let g:ycm_global_ycm_extra_conf = '.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

" autostart nerdtree even if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

""" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

