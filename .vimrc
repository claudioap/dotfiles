set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'SirVer/ultisnips'
Plugin 'FredKSchott/CoVim'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on       " Re-enable filetype


syntax on                       " syntax highlighting
colorscheme solarized           " set color scheme
set background=dark
set number                      " line numbers
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

""nnoremap <esc> :noh<return><esc>" disable highlighting after search
""set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
nnoremap <CR> :nohlsearch<CR><CR>

" Always show statusline
set laststatus=2

"" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
setlocal foldmethod=syntax

"Airline + Themes
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
set ttimeoutlen=50

"NerdTree
""Autostart
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"" Open with C-n
map <C-n> :NERDTreeToggle<CR>
"" Folder expandable/colapsable icons
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Syntastic
let g:syntastic_python_python_exec = '/usr/bin/python3'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"YouCompleteMe
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
