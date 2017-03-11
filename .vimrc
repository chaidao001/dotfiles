if !$SSH_CLIENT
    "use pathogen to autoload plugins
    execute pathogen#infect()

    "monokai colours
    colorscheme monokai
endif

"Set vim to 256 colour
set t_Co=256

"Don't support vi anymore
set  nocompatible

"map tab to 4 spaces
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

"enable syntax
syntax enable

"indent
set autoindent
filetype indent plugin on
set showmode

"ignore case when all lowercase
set ignorecase

"case senstive when contains upper-case letters
set smartcase

"disable indentation when pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

"show relative line number
set relativenumber
"show line number at current line
set number

"nerdtree
map <C-n> :NERDTreeToggle<CR>
"close vim if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Search down into subfolders
"Provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when tab complete
set wildmenu

"Set leader key
let mapleader = "\<Space>"

"Display groovy syntax for mesa files
au BufRead,BufNewFile *.mesa set filetype=groovy
au BufRead,BufNewFile *.macro set filetype=groovy

"Set browser cookies for vim-datatable
let cookies = "c0816b2e-0ff8-4d0f-8714-aaf65fb7726e"
let dt_git = $HOME"/Work/data-table/"

"Status bar
set noruler
set laststatus=2

set statusline=
if !$SSH_CLIENT
    set statusline+=%1*\ \%{fugitive#head()}\ 
endif
set statusline+=%2*\%<\ %F\ 
set statusline+=%2*\%=\ row:\ %l/%L\ 
set statusline+=%2*\%=\ col:\ %c\ 
set statusline+=%1*\%=\ buf:\ %-1n\ 

hi User1 ctermbg=blue   ctermfg=white
hi User2 ctermbg=white  ctermfg=black

"Search
set is
set hlsearch
hi Search ctermbg=yellow  ctermfg=black   cterm=none
nnoremap <leader>n :nohls<cr>

"Highlight current line of the current pane
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

"source vimrc
nnoremap <leader>so :source ~/.vimrc<cr>

"use work path to root of a git repo
function! Git_Repo_Cdup() " Get the relative path to repo root
    "Ask git for the root of the git repo (as a relative '../../' path)
    let git_top = system('git rev-parse --show-cdup')
    let git_fail = 'fatal: Not a git repository'
    if strpart(git_top, 0, strlen(git_fail)) == git_fail
        " Above line says we are not in git repo. Ugly. Better version?
        return ''
    else
        " Return the cdup path to the root. If already in root,
        " path will be empty, so add './'
        return './' . git_top
    endif
endfunction

function! CD_Git_Root()
    execute 'cd '.Git_Repo_Cdup()
    let curdir = getcwd()
    echo 'CWD now set to: '.curdir
endfunction
nnoremap <LEADER>gr :call CD_Git_Root()<cr>

"Command-T
nmap <leader>ga :call CD_Git_Root()<cr>\|:CommandT regression/x_trader_fix/api<cr>

"Copy filename and path
nmap <leader>cf :let @*=expand("%:t")<CR>
nmap <leader>cp :let @*=expand("%")<CR>
nmap <leader>ca :let @*=expand("%:p")<CR>

"Split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Keybinds
nnoremap <leader><leader> <C-^>
nnoremap <leader>b :b#<CR>
nnoremap <tab> *
vnoremap <tab> *
nnoremap j gj
nnoremap k gk
nnoremap ; :
vnoremap <leader>c "+y

"NERDCommenter
nmap <leader>cc <Plug>NERDCommenterInvert

"Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

"Stop from flashing into terminal
set shellpipe=>

