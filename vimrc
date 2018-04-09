" -----------------------------------------------------------------------------
" Vundle setup
" -----------------------------------------------------------------------------

" IMPORTANT CAVEAT
" Oreder matters! Make sure that:
" * vim-sensible is the latest bundle on the list
" * syntastic bundle has been put before vim-signify

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" vim look & feel plugins
Plugin 'tomasr/molokai'
Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Text editing helper plugins
" -------------------------
" Text object support (prerequisite for vim-textobj-rubyblock)
Plugin 'kana/vim-textobj-user'
" Improved dot key
Plugin 'tpope/vim-repeat'
" Smart surroundings (brackets, quotes, etc)
Plugin 'tpope/vim-surround'
" Useful mapping pairs
Plugin 'tpope/vim-unimpaired'
" Visual search improvements
Plugin 'nelstrom/vim-visual-star-search'
" Smart tab completion
Plugin 'ervandew/supertab'
" Wisely add 'end' in Ruby/BASH/etc
Plugin 'tpope/vim-endwise'
" Text alignment
Plugin 'godlygeek/tabular'
" Text folding improvments
Plugin 'HarnoRanaivo/vim-neatfoldtext'

" Comment plugin
Plugin 'tpope/vim-commentary'

" Really cool and useful file finder
Plugin 'kien/ctrlp.vim'

" Shell/OS integration plugins
Plugin 'tpope/vim-dispatch'

" better ack, C vs Perl
if executable('ag')
  Plugin 'rking/ag.vim'
endif

" Show differences for recovered files
Plugin 'chrisbra/Recover.vim'

" Snipmate & dependecies + snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Faster YAML processing
" Plugin 'avakhov/vim-yaml'
Plugin 'ingydotnet/yaml-vim'

" Ruby block selection
Plugin 'nelstrom/vim-textobj-rubyblock'
" Generic Ruby helpers for vim users
Plugin 'vim-ruby/vim-ruby'

" Chef plugin
Plugin 'dougireton/vim-chef'

" JSON plugin
Plugin 'elzr/vim-json'

" Markdown plugin
" Plugin 'tpope/vim-markdown'

" Syntax checker
Plugin 'scrooloose/syntastic'

" Syntax, indent and filetype detection for Git files
Plugin 'tpope/vim-git'
" Git wrapper for vim
Plugin 'tpope/vim-fugitive'
" Git repository viewer for vim
Plugin 'gregsexton/gitv'
" Show a VCS diff using Vim's sign column
Plugin 'mhinz/vim-signify'

" Nice tree explorer for vim
Plugin 'scrooloose/nerdtree'

" Auto-completion for quotes, brackets, etc.
Plugin 'Raimondi/delimitMate'

" VCL syntax highlightning
Plugin 'smerrill/vcl-vim-plugin'

" Better whitespace highlighting
Plugin 'ntpeters/vim-better-whitespace'

" Go support
Plugin 'fatih/vim-go'

" Display indent levels in code
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Yggdroot/indentLine'

" HashiCorp tools
Plugin 'hashivim/vim-consul'
Plugin 'hashivim/vim-packer'
Plugin 'hashivim/vim-terraform'
Plugin 'hashivim/vim-vagrant'

" Vim defaults everyone can agree
"
" WARNING - this bundle should be included as the last one
"
" * enables syntax
" * turns on file decetions
" * status bar (powerline)
if !has('nvim')
  Plugin 'tpope/vim-sensible'
end

" A collection of language packs for Vim
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
set cursorline      " Highlight current line
set cc=80           " Draw 80 column line
set termguicolors
let ayucolor="dark"
colorscheme ayu

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
" Ctrl-H doesn't work in NeoVim by default, see:
" https://github.com/neovim/neovim/issues/2048#issuecomment-98307896
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
" misc
" -----------------------------------------------------------------------------
" scrolling fix in iterm2
set mouse=nicr

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

" disable f1
nmap <F1> <nop>

" Disable python & ruby providers
let g:loaded_python_provider = 1
let g:loaded_python3_provider = 1
let g:loaded_ruby_provider = 1

" -----------------------------------------------------------------------------
" autocmds
" -----------------------------------------------------------------------------
" set correct indentation level
autocmd Filetype ruby,eruby,yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype terraform setlocal ts=2 sts=2 sw=2

" get rid of whitespaces on save from specified files
autocmd BufWritePre *.py,*.rb,*.erb,*.json :call Preserve("%s/\\s\\+$//e")
" autoformat specified files on save
autocmd BufWritePre *.json :call Preserve("normal gg=G")

" disable paste mode when leaving Insert Mode
autocmd InsertLeave * set nopaste

" Limit syntax highlighting for ruby files
autocmd FileType ruby,ruby.chef,eruby,eruby.chef set synmaxcol=80

" Jenkinsfiles
au BufReadPost Jenkinsfile set syntax=groovy
