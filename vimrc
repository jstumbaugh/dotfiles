" Plugs {{{ 
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-shell'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-update-rc' }
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'uguu-org/vim-matrix-screensaver'
Plug 'zaiste/tmux.vim'

call plug#end()
" }}}

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
  colorscheme base16-eighties
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
" Copy to system clipboard
map <Leader>y "+y

" NerdTree {{{
map <C-n> :NERDTreeToggle<CR>
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Start NerdTree on vim start
"autocmd vimenter * NERDTree
" Close NERDTree if its last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeMouseMode=3
" }}}

command! Q quit     " converts ... :Q => :q
command! W quit     " converts ... :W => :w
command! Wq wq      " converts ... :Wq => :wq
command! Wn wn      " converts ... :Wn => :wn
command! WN wN      " converts ... :WN => :wN

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

" Execute Dispatch for current file
map <Leader>d :w<CR>:Dispatch<CR>

" RSpec.vim mappings
map <Leader>c :w<CR>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<CR>:call RunNearestSpec()<CR>
map <Leader>l :w<CR>:call RunLastSpec()<CR>
map <Leader>a :w<CR>:call RunAllSpecs()<CR>

if has("gui_macvim")
  "don't set rspec_command"
else
  let g:rspec_command = "Dispatch rspec {spec}"
endif

" Matrix command map to \m
map <Leader>m :Matrix<CR>

" Tabs {{{
map <Leader>t :tabe<CR>
nnoremap <Leader>ev :tabe $MYVIMRC<CR>
nnoremap <Leader>rv :source $MYVIMRC<CR>
" }}}

" Map F5 to remove trailing whitespace
nnoremap <silent> <F5> :let _s@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Map comments to Ctrl+/
nmap <C-_> :Commentary<CR>
vmap <C-_> :Commentary<CR>

" Map no highlighting to \h
map <Leader>h :nohl<CR>

augroup vimrc
  autocmd!

  " Set .arb files to ruby
  autocmd BufRead,BufNewFile *.arb setfiletype ruby

  " Setup vim-dispatch for RSpec files
  autocmd BufRead,BufNewFile *_spec.rb let g:dispatch = 'rspec %'

augroup END
