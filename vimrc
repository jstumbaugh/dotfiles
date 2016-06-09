call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'bling/vim-airline-themes'
Plug 'chriskempson/base16-shell'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-update-rc' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'zaiste/tmux.vim'

call plug#end()


" Colors
set background=dark

" Airline
let g:airline#extensions#tabline#enables = 1
"let g:airline_theme='bubblegum'


" FZF
map <Leader>f :FZF<CR>

syntax enable

" Set backup directories for .swp files
set nobackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

if has("gui_running") || &t_Co >= 256
  let g:base16_shell_path = "~/.bash/base16-shell"
  let base16colorspace=256  " Access colors present in 256 colorspace
  colorscheme base16-eighties
  set guifont=Inconsolata-g\ for\ Powerline:h11

  if &term =~ 'screen-256color' && exists('$TMUX')
    " disable Background Color Erase (BCE) so that
    " color schemes
    " render properly when inside 256-tmux and GNU screen.
    " see also
    " http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
  endif
else
  colorscheme bluegreen
endif


" Misc {{{
set backspace=indent,eol,start
set timeoutlen=500
" }}}
" Digraphs {{{
digraphs .. 8230              " Add digraph for ellipsis (…) mapped to '..'
" }}}
" Spaces & Tabs {{{
set tabstop=2                 " number of visual spaces per TAB
set softtabstop=2             " number of spaces in TAB when editing
set shiftwidth=2
set expandtab                 " convert tab to spaces
set smarttab                  " smartly insert those tabs
set shiftround                " round shifts to a multiple of shiftwidth
" }}}
" UI Config {{{
set number                    " show line numbers
set nowrap                    " do not wrap long lines
set showcmd                   " display incomplete commands
set cursorline                " highlights row with cursor
" set cursorcolumn              " highlights column with the cursor
set title                     " change the terminal's title
set wildmenu                  " visual autocomplete for command menu
set wildignore=*.swp          " ignore swp files in completion
set list                      " show whitespace chars
set listchars=tab:»\ ,trail:·  " display tabs as » and trailing spaces as ·
set lazyredraw                " redraw only when we need to
set modeline                  " always show modeline
set ttyfast                   " Send more characters for redraws
set shortmess=atI             " Don’t show the intro message when starting Vim
set cmdheight=2               " more room to display messages
set scrolloff=10              " keep cursor line from the bottom of the window
set sidescrolloff=15          " keep cursor line from the bottom of the window
set sidescroll=1              " keep cursor line from the bottom of the window
set splitright                " Opens vertical split right of current window
set splitbelow                " Opens horizontal split below current window
set laststatus=2              " Always show status line of last window
set showmode                  " Show current mode in the modeline
set ruler                     " Show line and column number
filetype plugin indent on     " load filetype-specific indent and plugin files

set mouse=a                   " enable mouse

if exists('+colorcolumn')
  set colorcolumn=81          " highlight column 81 for text alignment
endif
" }}}

" Paste from system clipboard
map <Leader>p :set paste<CR>o<ESC>

" NerdTree {{{
map <C-n> :NERDTreeToggle<CR>
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Start NerdTree on vim start
autocmd vimenter * NERDTree
" Close NERDTree if its last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

command! Q quit " converts ... :Q => :q
command! W quit " converts ... :W => :w

" Move between windows {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Syntastic {{{
let g:syntastic_ignore_files = ['.java$']

" mark syntax errors with :signs
let g:syntastic_enable_signs=1

" automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

" show the error list automatically
let g:syntastic_auto_loc_list=0

" don't care about warnings
" let g:syntastic_quiet_messages = {'level': 'warnings'}

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1

let g:syntastic_check_on_wq = 0

" let g:syntastic_ruby_checkers = ['rubylint', 'mri']
" }}}


" Folding {{{
set foldenable
set foldlevelstart=10   " open most folds by default to
set foldnestmax=10      " 10 nested fold max
" }}}




