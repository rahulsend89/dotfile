" Example Vim configuration.
set relativenumber
set number
set nocompatible                  " Must come first because it changes other options.

filetype off
" set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Add the g flag to search/replace by default
set gdefault
" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
" CursorShape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:python_host_prog = '/usr/local/Cellar/python3/3.5.1/bin/python3'
let g:loaded_python3_provider = 1
let g:python3_host_skip_check = 1
" let mapleader=","

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wikitopian/hardmode.git'
Plugin 'tpope/vim-ragtag.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'  " fuzzy file finder, mapped to <leader>t
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
Plugin 'benmills/vimux' " tmux integration for vim
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'vim-airline/vim-airline'  " fancy statusline
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plugin 'Valloric/YouCompleteMe' " AutoCompletion
Plugin 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plugin 'sickill/vim-pasta' " context-aware pasting
Plugin 'junegunn/goyo.vim' " distraction-free writing
Plugin 'junegunn/limelight.vim' " focus tool. Good for presentating with vim
Plugin 'terryma/vim-multiple-cursors' " Multiple cursor c-n , c-p , c-x
Plugin 'ryanoasis/vim-devicons' " devicons
Plugin 'szw/vim-tags' " Ctags Awesome ness
Plugin 'tpope/vim-dispatch' " Old Vim dispatch Asysc task
" language-specific plugins
Plugin 'gregsexton/MatchTag' " match tags in html, similar to paren support
Plugin 'othree/html5.vim' " html5 support
Plugin 'pangloss/vim-javascript' " JavaScript support
Plugin 'moll/vim-node' " node support
Plugin 'jelera/vim-javascript-syntax' " JavaScript syntax plugin
Plugin 'elzr/vim-json'
Plugin 'wavded/vim-stylus' " markdown support
Plugin 'ap/vim-css-color' " set the background of hex color values to the color
Plugin 'hail2u/vim-css3-syntax' " CSS3 syntax support
Plugin 'itspriddle/vim-marked' " Open markdown files in Marked.app - mapped to <leader>m
Plugin 'tpope/vim-markdown' " markdown support
Plugin 'timcharper/textile.vim' " textile support

call vundle#end() 

filetype plugin indent on         " Turn on file type detection.

" silent! call pathogen#runtime_append_all_bundles()

if has('mouse')
    set mouse=a
    " set ttymouse=xterm2
endif

set ttyfast
set diffopt+=vertical

" swapLines
" noremap <silent> <c-j> :call <SID>swap_up()<CR>
" noremap <silent> <c-k> :call <SID>swap_down()<CR>

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" activate spell-checking alternatives
nmap ;s :set invspell spelllang=en<CR>
nnoremap ; :

" toggle invisible characters
set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪
nmap <leader>; :set list!<CR>

syntax enable                     " Turn on syntax highlighting.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif"

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=8                   " Show 3 lines of context around the cursor.
set sidescrolloff=15
set sidescroll=1

set title                         " Set the terminal's title

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

set autoindent
set smartindent

" nnoremap <M-j> :m .+1<CR>==
" nnoremap <M-k> :m .-2<CR>==
" inoremap <M-j> <Esc>:m .+1<CR>==gi
" inoremap <M-k> <Esc>:m .-2<CR>==gi
" vnoremap <M-j> :m '>+1<CR>gv=gv
" vnoremap <M-k> :m '<-2<CR>gv=gv
" markdown to html
nmap <leader>md :%!markdown --html4tags <CR>
" remove extra whitespace
nmap <leader><space> :%s/\s\+$<CR>
" shortcut to save
nmap <leader>, :w<CR>
" disable Ex mode
noremap Q <NOP>
" set paste toggle
set pastetoggle=<F6>
" toggle paste mode
map <leader>v :set paste!<CR>
vnoremap gcc :TComment<CR>
inoremap gcc :TComment<CR>

inoremap jk <esc>

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
"set tabstop=2                    " Global tab width.
"set shiftwidth=2                 " And again, related.
"set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set background=dark
colorscheme solarized 
let g:solarized_termtrans=1

" Tab mappings.
map <leader>tt :tabnew<CR>
map <leader>te :tabedit<CR>
map <leader>tc :tabclose<CR>
map <leader>to :tabonly<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprevious<CR>
map <leader>tf :tabfirst<CR>
map <leader>tl :tablast<CR>
map <leader>tm :tabmove<CR>
map H ^
map L g_
map J 5j
map K 5k
map ,xc :noh<CR>
noremap <space> :set hlsearch! hlsearch?<CR>
map <leader>o :e ~/.vimrc<CR>
map <leader>oc :e ~/.vim/install/config.sh<CR>
set nobackup
set nowritebackup 

vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>

" switch between current and last buffer
nmap <leader>. <c-^>
" enable . command in visual mode
vnoremap . :normal .<CR>

map <leader>h              :call WinMove('h')<CR>
map <leader>k              :call WinMove('k')<CR>
map <leader>l              :call WinMove('l')<CR>
map <leader>j              :call WinMove('j')<CR>

nmap <left>  :3wincmd <<CR>
nmap <right> :3wincmd ><CR>
nmap <up>    :3wincmd +<CR>
nmap <down>  :3wincmd -<CR>

map <leader>wc :wincmd q<CR>

" toggle cursor line
nnoremap <leader>i :set cursorline!<CR>

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<CR>
nmap \s :set ts=4 sts=4 sw=4 et<CR>
nmap <leader>w :setf textile<CR> :Goyo<CR>

" file type specific settings
if has('autocmd') && !exists('autocommands_loaded')
    let autocommands_loaded = 1
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab indentkeys-=*<return>
    autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType *.md.js :call SyntasticReset<CR>
    autocmd FileType markdown,textile setlocal textwidth=0 wrapmargin=0 wrap spell
    autocmd FileType .xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
    autocmd FileType crontab setlocal nobackup nowritebackup
    "autocmd WinEnter * setlocal cursorline
    "autocmd WinLeave * setlocal nocursorline

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! wa

    autocmd BufNewFile,BufRead *.ejs set filetype=html
    autocmd BufNewFile,BufRead *.ino set filetype=c
    autocmd BufNewFile,BufRead *.svg set filetype=xml

    " make quickfix windows take all the lower section of the screen when there
    " are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call ApplyLocalSettings(expand('<afile>:p:h'))

    autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/

    " autocmd! BufWritePost * Neomake
endif

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1
set nolazyredraw " don't redraw while executing macros
set magic " Set magic on, for regex

set showmatch " show matching braces/visu

let g:ctrlp_clear_cache_on_exit = 0 " Do not clear filenames cache, to improve CtrlP startup
let g:ctrlp_lazy_update = 350 " Set delay to prevent extra search
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' } " Use python fuzzy matcher for better performance
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_max_files = 0 " Set no file limit, we are building a big project
let g:ctrlp_switch_buffer = 'Et' " Jump to tab AND buffer if already open
let g:ctrlp_open_new_file = 'r' " Open newly created files in the current window
let g:ctrlp_open_multiple_files = 'ij' " Open multiple files in hidden buffers, and jump to the first one

" Uncomment to use Jamis Buck's file opening plugin
" map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
" autocmd BufNewFile,BufRead *_spec.rb compiler rspec

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" recursively search up from dirname, sourcing all .vimrc.local files along the way
function! ApplyLocalSettings(dirname)
    " convert windows paths to unix style
    let l:curDir = substitute(a:dirname, '\\', '/', 'g')

    " walk to the top of the dir tree
    let l:parentDir = strpart(l:curDir, 0, strridx(l:curDir, '/'))
    if isdirectory(l:parentDir)
        call ApplyLocalSettings(l:parentDir)
    endif

    " now walk back down the path and source .vimsettings as you find them.
    " child directories can inherit from their parents
    let l:settingsFile = a:dirname . '/.vimrc.local'
    if filereadable(l:settingsFile)
        exec ':source' . l:settingsFile
    endif
endfunction

" smart tab completion
function! Smart_TabComplete()
    let line = getline('.')                         " current line

    let substr = strpart(line, -1, col('.')+1)      " from the start of the current
    " line to one character right
    " of the cursor
    let substr = matchstr(substr, '[^ \t]*$')       " word till cursor
    if (strlen(substr)==0)                          " nothing to match on empty string
        return '\<tab>'
    endif
    let has_period = match(substr, '\.') != -1      " position of period, if any
    let has_slash = match(substr, '\/') != -1       " position of slash, if any
    if (!has_period && !has_slash)
        return '\<C-X>\<C-P>'                         " existing text matching
    elseif ( has_slash )
        return '\<C-X>\<C-F>'                         " file matching
    else
        return '\<C-X>\<C-O>'                         " plugin matching
    endif
endfunction

" execute a custom command
function! RunCustomCommand()
    up
    if g:silent_custom_command
        execute 'silent !' . s:customcommand
    else
        execute '!' . s:customcommand
    endif
endfunction

function! SetCustomCommand()
    let s:customcommand = input('Enter Custom Command$ ')
endfunction

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

function! HiInterestingWord(n)
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction

function! HtmlUnEscape()
  silent s/&lt;/</eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

nnoremap <silent> <leader>u :call HtmlUnEscape()<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<CR>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<CR>

vmap <C-c> :w !pbcopy<CR><CR> 

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<CR>
nmap <silent> <leader>r :CtrlPBuffer<CR>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

nmap <leader>m :MarkedOpen!<CR>
nmap <leader>mq :MarkedQuit<CR>

" toggle Limelight
nmap <leader>f :Limelight!!<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0
let g:vim_tags_use_vim_dispatch = 1