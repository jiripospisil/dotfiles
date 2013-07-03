" Shamelessly gathered from all over the internet

set nocompatible 
call pathogen#infect()
syntax on
filetype plugin indent on
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

set t_Co=256
set background=light
colorscheme Tomorrow-Night
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guifont="bitstream vera sans"\ 9
highlight Cursor guifg=white guibg=#CC0033
set number             

let mapleader = ","
set wildmenu
set tabpagemax=1000
set directory=/tmp
set encoding=utf-8
set ruler
set showcmd
set pastetoggle=<F5>
set autoread
set hidden
set scrolloff=2
set nobackup

set nowrap
set textwidth=80

set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

set dictionary=/usr/share/dict/words

noremap gp "+p

set hlsearch
set incsearch
set ignorecase
nnoremap <CR> :nohlsearch<CR>/<BS>

nmap <C-S-tab> :tabprevious<CR>
nmap <C-tab> :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
imap <C-S-tab> <Esc>:tabprevious<CR>i
imap <C-tab> <Esc>:tabnext<CR>i
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Left> <nop>
map <Right> <nop>
map <Up> <nop>
map <Down> <nop>
map Q <nop>
map K <nop>

cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <leader>e :edit %%
map <leader>v :view %%

map <leader>f :CommandTFlush<CR>\|:CommandT<CR>
map <leader>gf :CommandTFlush<CR>\|:CommandT %%<CR>

map <leader>gv :CommandTFlush<CR>\|:CommandT app/views<CR>
map <leader>gc :CommandTFlush<CR>\|:CommandT app/controllers<CR>
map <leader>gm :CommandTFlush<CR>\|:CommandT app/models<CR>
map <leader>gh :CommandTFlush<CR>\|:CommandT app/helpers<CR>
map <leader>gl :CommandTFlush<CR>\|:CommandT lib<CR>
map <leader>gp :CommandTFlush<CR>\|:CommandT public<CR>
map <leader>gs :CommandTFlush<CR>\|:CommandT app/assets/stylesheets<CR>
map <leader>gj :CommandTFlush<CR>\|:CommandT app/assets/javascripts<CR>
map <leader>gt :CommandTFlush<CR>\|:CommandT spec<CR>

map <leader>da :CommandTFlush<cr>\|:CommandT app/assets/javascripts/templates<cr>
map <leader>dv :CommandTFlush<cr>\|:CommandT app/assets/javascripts/views<cr>
map <leader>dc :CommandTFlush<cr>\|:CommandT app/assets/javascripts/controllers<cr>
map <leader>dr :CommandTFlush<cr>\|:CommandT app/assets/javascripts/routes<cr>
map <leader>dm :CommandTFlush<cr>\|:CommandT app/assets/javascripts/models<cr>

nnoremap <leader><leader> <c-^>

set winwidth=120
set winheight=5
set winminheight=5
set winheight=999

map <C-BS> <esc>:wa<CR>
imap <C-BS> <esc>:wa<CR>

map <C-M-BS> <esc>:wq<CR>
imap <C-M-BS> <esc>:wq<CR>

au BufWritePre *.rb,*.css,*.scss,*.slim,*.js,*.coffee,*.yml,*.pp,*.emblem :%s/\s\+$//e

" http://blog.sanctum.geek.nz/vim-command-typos/
if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif

set formatoptions-=or
