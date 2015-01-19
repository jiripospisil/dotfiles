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

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 0
let g:ycm_filetype_whitelist = {"cpp": 1, "c": 1}
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []

let g:UltiSnipsExpandTrigger="<M-m>"
let g:UltiSnipsJumpForwardTrigger="<M-n>"

if !has('python')
  echo "In order to use pymatcher plugin, you need +python compiled vim"
else
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif

let g:ctrlp_lazy_update = 200
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 0

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif

colorscheme hybrid
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guifont=Source\ Code\ Pro\ Medium\ 12
highlight Cursor guifg=white guibg=#CC0033
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/
set number
set relativenumber
set completeopt-=preview

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
set scrolloff=5
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
set cm=blowfish

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

imap <C-c> <ESC>

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

nmap <leader>ss :Ack<space>
nmap <leader>sa :Ack --all<space>
nmap <leader>sr :Ack --ruby<space>
nnoremap <M-]> :YcmCompleter GoTo<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

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

autocmd FileType c,cpp,objc nnoremap <buffer><C-e> :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><C-e> :ClangFormat<CR>
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

autocmd BufNewFile,BufRead *.md setlocal spell
autocmd BufRead /usr/include/c++/* set syntax=cpp

autocmd BufWritePre *.rb,*.css,*.scss,*.slim,*.js,*.coffee,*.yml,*.pp,*.emblem,*.md,*.h,*.cc,*.c,*.hpp,*.rs,*.proto,*.rake :%s/\s\+$//e

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
set path=.
