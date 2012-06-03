set nocompatible               " be iMproved
filetype off                   " required!
syntax on
let mapleader=","

"Save a keypress when invoking vim command
map ; :

set hidden

" Use jj instead of escape
ino jj <esc>
cno jj <esc>

" Encoding
set encoding=utf-8

" Allow backspace at the end of lines, start of lines and after indents 
set backspace=eol,start,indent


" Show line breaks with arrow
set showbreak=↪  
set list
set listchars=tab:▸\ ,eol:¬
set cpoptions+=$

" Don't beep, use a visual bell instead
set visualbell
set noerrorbells

set tabstop=4		"How many columns to display for a tab
set shiftwidth=4	"No. spaces used to reindeinting 
set softtabstop=4	"Number of spaces to insert for a tab
set expandtab		"Expand tabs to softtabstop # of spaces

if has('gui_running')  " GUI
    " GUI colors
    colorscheme badwolf
    set guifont=PragmataPro:h15
    set guioptions=egmrt
    set guioptions-=T
    winpos 0 0
    winsize 270 70
    set go-=L
    set go-=r
elseif $TERM == "xterm-256color" || $TERM == "screen-256color"  "Terminal
    set t_Co=256
    colorscheme badwolf
    set guifont=PragmataPro:h15
    set lazyredraw
endif


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'


" My Bundles here:
"
" original repos on github
Bundle 'sjl/badwolf'
Bundle 'nanotech/jellybeans.vim.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'LustyExplorer'

" Syntax error detection
Bundle 'scrooloose/syntastic.git'

" Pandoc plugin 
Bundle 'vim-pandoc'

" Autocomplete
Bundle 'neocomplcache'
Bundle 'neocomplcache-snippets_complete'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"  Key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" C / C++
Bundle 'c.vim'
let g:C_MapLeader  = ','
Bundle 'google.vim'
Bundle 'a.vim'
Bundle 'OmniCppComplete'

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>


"Commenting
Bundle 'scrooloose/nerdcommenter'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()



"Windows Settings
" Move the cursor to the window left of the current one
noremap <silent><Leader>wh :wincmd h<cr>
" Move the cursor to the window below the current one
noremap <silent><Leader>wj :wincmd j<cr>
" Move the cursor to the window above the current one
noremap <silent><Leader>wk :wincmd k<cr>
" Move the cursor to the window right of the current one
noremap <silent><Leader>wl :wincmd l<cr>

noremap <silent><Leader>cj :wincmd j<CR>:close<CR>
noremap <silent><Leader>ck :wincmd k<CR>:close<CR>
noremap <silent><Leader>ch :wincmd h<CR>:close<CR>
noremap <silent><Leader>cl :wincmd l<CR>:close<CR>
noremap <silent><Leader>cc :wincmd c<CR>:close<CR>

noremap <silent><Leader>wr :wincmd r<CR>
noremap <silent><Leader>wo :wincmd o<CR>
noremap <silent><Leader>wx :wincmd x<CR>
noremap <silent><Leader>ww :wincmd w<CR>


noremap <silent><Leader>vs :vsplit <CR>
noremap <silent><Leader>hs :split <CR>
