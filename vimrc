" -----------------------------------------------------------------------------
" Vundle setup
" -----------------------------------------------------------------------------

" IMPORTANT CAVEAT
" Oreder matters! Make sure that:
" * vim-sensible is the latest bundle on the list
" * syntastic bundle has been put before vim-signify

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" vim look & feel plugins
Bundle 'tomasr/molokai'
Bundle 'bling/vim-airline'

" Text editing helper plugins
" -------------------------
" Text object support (prerequisite for vim-textobj-rubyblock)
Bundle 'kana/vim-textobj-user'
" Improved dot key
Bundle 'tpope/vim-repeat'
" Smart surroundings (brackets, quotes, etc)
Bundle 'tpope/vim-surround'
" Useful mapping pairs
Bundle 'tpope/vim-unimpaired'
" Visual search improvements
Bundle 'nelstrom/vim-visual-star-search'
" Smart tab completion
Bundle 'ervandew/supertab'
" Wisely add 'end' in Ruby/BASH/etc
Bundle 'tpope/vim-endwise'
" Text alignment
Bundle 'godlygeek/tabular'
" Text folding improvments
Bundle 'HarnoRanaivo/vim-neatfoldtext'

" Comment plugin
Bundle 'tpope/vim-commentary'

" Really cool and useful file finder
Bundle 'kien/ctrlp.vim'

" Shell/OS integration plugins
Bundle 'tpope/vim-dispatch'

" better ack, C vs Perl
if executable('ag')
  Bundle 'rking/ag.vim'
endif

" Show differences for recovered files
Bundle 'chrisbra/Recover.vim'

" Snipmate & dependecies + snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Faster YAML processing
" Bundle 'avakhov/vim-yaml'
Bundle 'ingydotnet/yaml-vim'

" Ruby block selection
Bundle 'nelstrom/vim-textobj-rubyblock'
" Generic Ruby helpers for vim users
Bundle 'vim-ruby/vim-ruby'

" Chef plugin
Bundle 'dougireton/vim-chef'

" JSON plugin
Bundle 'elzr/vim-json'

" Markdown plugin
Bundle 'tpope/vim-markdown'

" Syntax checker
Bundle 'scrooloose/syntastic'

" Syntax, indent and filetype detection for Git files
Bundle 'tpope/vim-git'
" Git wrapper for vim
Bundle 'tpope/vim-fugitive'
" Git repository viewer for vim
Bundle 'gregsexton/gitv'
" Show a VCS diff using Vim's sign column
Bundle 'mhinz/vim-signify'

" Nice tree explorer for vim
Bundle 'scrooloose/nerdtree'

" Auto-completion for quotes, brackets, etc.
Bundle 'Raimondi/delimitMate'

" VCL syntax highlightning
Bundle 'smerrill/vcl-vim-plugin'

" Better whitespace highlighting
Bundle 'ntpeters/vim-better-whitespace'

" Display indent levels in code
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'Yggdroot/indentLine'

" Vim defaults everyone can agree
"
" WARNING - this bundle should be included as the last one
"
" * enables syntax
" * turns on file decetions
" * status bar (powerline)
Bundle 'tpope/vim-sensible'

" -----------------------------------------------------------------------------
" moving around, searching and patterns
" -----------------------------------------------------------------------------
set nostartofline " keep cursor in same column for long-range motion cmds"
set hlsearch      " highlight all matches for the last used search pattern
set incsearch     " show match for partly typed search command
set ignorecase    " ignore case when using a search pattern
set smartcase     " override 'ignorecase' if pattern has upper case characters
set autochdir     " automatically change window's cwd to file's dir

" -----------------------------------------------------------------------------
" displaying text
" -----------------------------------------------------------------------------
set scrolloff=3     " number of screen lines to show around the cursor
set linebreak       " for lines longer than the window, wrap intelligently
" set showbreak=↪\ \  " string to put before wrapped screen lines
set sidescrolloff=2 " min # of columns to keep left/right of cursor
set number          " always display line numbers

" -----------------------------------------------------------------------------
" syntax, highlighting and spelling
" -----------------------------------------------------------------------------
syntax on
set background=dark
set t_Co=256
colorscheme molokai " Molokai FTW!
set cursorline      " Highlight current line

" -----------------------------------------------------------------------------
" multiple windows
" -----------------------------------------------------------------------------
" Window split shourtcuts
map <Leader>h :sp<CR>
map <Leader>v :vsp<CR>

" Moving between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" -----------------------------------------------------------------------------
" multiple tab pages
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" terminal
" -----------------------------------------------------------------------------
set ttyfast

" -----------------------------------------------------------------------------
" using the mouse
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" printing
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" messages and info
" -----------------------------------------------------------------------------
set noshowmode " don't display the current mode (Insert, Visual, Replace) in
               " the status line. This info is already shown in the Airline
               " status bar

" -----------------------------------------------------------------------------
" selecting text
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" editing text
" -----------------------------------------------------------------------------
set nojoinspaces         " Use only one space after '.' when joining lines,
                         " instead of two
set completeopt+=longest " better omni-complete menu
set nrformats-=octal     " don't treat numbers with leading zeros as octal
                         " when incrementing/decrementing

" -----------------------------------------------------------------------------
" tabs and indenting
" -----------------------------------------------------------------------------
set tabstop=4     " tab = 4 spaces
set softtabstop=4 " remove 4 spaces when removing indentation
set shiftwidth=4  " autoindent indents 4 spaces
set shiftround    " round to 'shiftwidth' for "<<" and ">>"
set expandtab     " always use spaces instead of tab characters

" Make code indendation easier
vnoremap < <gv
vnoremap > >gv

" -----------------------------------------------------------------------------
" folding
" -----------------------------------------------------------------------------
if has('folding')
  set nofoldenable            " when opening files, all folds open by default
  set foldtext=NeatFoldText() " use a custom foldtext function
endif

" -----------------------------------------------------------------------------
" diff mode
" -----------------------------------------------------------------------------
set diffopt+=vertical " start diff mode with vertical splits by default

" -----------------------------------------------------------------------------
" mapping
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" reading and writing files
" -----------------------------------------------------------------------------
set modeline " make vim annotations useful
set autoread " automatically re-read files changed outside of vim

" Organize swap and backup files
set nobackup
set noswapfile

" -----------------------------------------------------------------------------
"  the swap file
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
"  command line editing
" -----------------------------------------------------------------------------
set history=1000               " save more commands in history
set wildmode=list:longest,full " command line completion mode
set wildmenu                   " enable command line completion

" -----------------------------------------------------------------------------
" executing external commands
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
"  running make and jumping to errors
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" language specific
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" multi-byte characters
" -----------------------------------------------------------------------------
set encoding=utf8

" -----------------------------------------------------------------------------
" various
" -----------------------------------------------------------------------------
" toogle NerdTree
map <F2> :NERDTreeToggle<CR>

" toogle paste-mode
set pastetoggle=<F3>

" remove higligth from vim
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" replace default characters with a nicer one
set listchars=tab:»\ ,eol:¬

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" remove trailing whitespaces shourtcat
nnoremap <silent> <F5> :call Preserve("%s/\\s\\+$//e")<CR>

" convert spaces to tabs
map <Leader>t :set noexpandtab<CR>:%retab!<CR>

" sudo write
cmap w!! w !sudo tee > /dev/null %

" ruby autocompletion
inoremap <C-@> <c-x><c-o>

" -----------------------------------------------------------------------------
" autocmds
" -----------------------------------------------------------------------------
" set correct indentation level for ruby files
autocmd Filetype ruby,eruby,yaml setlocal ts=2 sts=2 sw=2

" get rid of whitespaces on save from specified files
autocmd BufWritePre *.py,*.rb,*.erb,*.json :call Preserve("%s/\\s\\+$//e")
" autoformat specified files on save
autocmd BufWritePre *.json :call Preserve("normal gg=G")

" Draw 80 column line
set cc=80

" disable paste mode when leaving Insert Mode
autocmd InsertLeave * set nopaste

" Limit syntax highlighting for ruby files
autocmd FileType ruby,ruby.chef,eruby,eruby.chef set synmaxcol=80
