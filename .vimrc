" Shamelessly gathered from all over the internet
" 
" https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
" https://github.com/r00k/dotfiles/blob/master/vimrc
" https://github.com/dmajda/dotfiles/blob/master/.vimrc

set nocompatible 
call pathogen#infect()
syntax on
filetype plugin indent on
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ctrlp_match_window = "order:ttb"
let g:html_indent_inctags = "html,body,head,tbody,p,script"

set t_Co=256
set background=light
colorscheme Tomorrow-Night-Bright
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
highlight Cursor guifg=white guibg=#CC0033
set number             
set relativenumber

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
set backupdir=~/.vim/backup
set nofoldenable
set shiftround
set timeoutlen=500

set nowrap
set textwidth=80

set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set backspace=2
" set virtualedit=all

set dictionary=/usr/share/dict/words

noremap gp "+p

set hlsearch
set incsearch
set ignorecase
nnoremap <CR> :nohlsearch<CR>/<BS>

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

map <leader>f :CtrlP <CR>
map <leader>gf :CtrlP %%<CR>
map <leader>b :CtrlPBuffer <CR>
map <leader>t :CtrlPTag <CR>

map <leader>gv :CtrlP  app/views<CR>
map <leader>gc :CtrlP  app/controllers<CR>
map <leader>gm :CtrlP  app/models<CR>
map <leader>gh :CtrlP  app/helpers<CR>
map <leader>gl :CtrlP  lib<CR>
map <leader>gp :CtrlP  public<CR>
map <leader>gs :CtrlP  app/assets/stylesheets<CR>
map <leader>gj :CtrlP  app/assets/javascripts<CR>
map <leader>gt :CtrlP  spec<CR>

map <leader>da :CtrlP  app/assets/javascripts/templates<cr>
map <leader>dv :CtrlP  app/assets/javascripts/views<cr>
map <leader>dc :CtrlP  app/assets/javascripts/controllers<cr>
map <leader>dr :CtrlP  app/assets/javascripts/routes<cr>
map <leader>dm :CtrlP  app/assets/javascripts/models<cr>

nmap <leader>s :Ack<space>

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>m :call RenameFile()<cr>

nnoremap <leader><leader> <c-^>

set winwidth=100
set winheight=5
set winminheight=5
set winheight=999

nmap <C-BS> :wa<CR>
imap <C-BS> <esc>:wa<CR>

nmap <C-M-BS> :wq<CR>
imap <C-M-BS> <esc>:wq<CR>

au BufWritePre *.rb,*.css,*.scss,*.slim,*.js,*.coffee,*.yml,*.pp,*.emblem,*.md,*.h,*.cc,*.hpp :%s/\s\+$//e

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
