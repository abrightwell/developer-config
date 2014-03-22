call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

syntax on
set nowrap
set number
set tabstop=4

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if &t_Co >= 256 || has("gui_running")
    colorscheme mustang
endif

