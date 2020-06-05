call plug#begin('~/.config/nvim/bundle')
Plug 'sheerun/vim-polyglot'
Plug 'jonathanfilip/vim-lucius'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/vim-color-forest-night'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'icymind/NeoSolarized'
Plug 'kaicataldo/material.vim'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
" Plug 'mhinz/vim-tree'
Plug 'mhinz/vim-signify'
" Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'voldikss/vim-floaterm'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-obsession'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'iamcco/coc-angular'
Plug 'scrooloose/nerdcommenter'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/taglist.vim'
Plug 'easymotion/vim-easymotion'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'suan/vim-instant-markdown'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'ujihisa/unite-colorscheme'
Plug 'junkblocker/unite-codesearch'
Plug 'jreybert/vimagit'
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jlanzarotta/bufexplorer'
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'christoomey/vim-tmux-navigator'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax


" Initialize plugin system
call plug#end()

let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs
        \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | exe 'source' stdpath('config') . '/init.vim'
endif
unlet autoload_plug_path

call plug#begin(stdpath('data') . '/plugged')

if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

let mapleader = "\<Space>"
nnoremap <silent> <expr> <Leader>op g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeAutoDeleteBuffer=1

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
let g:NERDTreeIgnore = ['^node_modules$', '\.git$[[dir]]']
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif
au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()
" indentLine
let g:indentLine_char = '▏'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.png$', '\.jpg$', '\.gif$', '\.mp3$', '\.ogg$', '\.mp4$',
      \ '\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$',
      \ '\.rar$']
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✹",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : ""
      \ }

" Vim DevIcons
exe 'source' stdpath('config') . '/extras/devicons.vim'
" lightline
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
let g:lightline = {
    \   'colorscheme': 'solarized',
    \   'component': { 'lineinfo': '⭡ %3l:%-2v' },
    \ }
exe 'source' stdpath('config') . '/lightline.vim'
highlight clear IncSearch
highlight IncSearch term=reverse cterm=reverse ctermfg=7 ctermbg=0 guifg=Black guibg=White
highlight Comment cterm=italic gui=italic


vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree
"
"
"" scrooloose/nerdtree
" "" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree | wincmd p
" "" close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if the only window left open is a NERDTree
" "" open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1 
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
" "" open NERDTree automatically when vim starts up on opening a directory
" autocmd StdinReadPre * let s:std_in=0
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif



" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
set encoding=UTF-8



" Color 
function! s:colors_default() abort
  highlight Comment cterm=italic
  highlight link User1 StatusLine   " master branch
  highlight link User2 StatusLine   " other branch
  highlight link User3 StatusLine   " separators
  highlight link User4 StatusLine   " filename at beginning
  highlight link User5 StatusLine   " ~changes
  highlight link SignifySignAdd    DiffAdd
  highlight link SignifySignDelete DiffDelete
  highlight link SignifySignChange DiffChange
  highlight Halo guifg=white guibg=#F92672 ctermfg=white ctermbg=197
endfunction

function! s:colors_janah() abort
  highlight User1  ctermfg=192 ctermbg=237 cterm=NONE
  highlight User2  ctermfg=167 ctermbg=237 cterm=NONE
  highlight User3  ctermfg=245 ctermbg=237 cterm=NONE
  highlight User4  ctermfg=215 ctermbg=237 cterm=NONE
  highlight User5  ctermfg=111 ctermbg=237 cterm=NONE
endfunction

function! s:colors_lucius() abort
  if &background ==# 'light'
    highlight Normal                  ctermbg=NONE guibg=NONE
    highlight CursorLine              ctermbg=255
    highlight User1      ctermfg=84   ctermbg=237  cterm=NONE
    highlight User2      ctermfg=222  ctermbg=237  cterm=NONE
    highlight User3      ctermfg=237  ctermbg=237  cterm=NONE
    highlight User4      ctermfg=255  ctermbg=237  cterm=NONE
    highlight User5      ctermfg=255  ctermbg=237  cterm=NONE
    highlight StatusLine              ctermbg=237  cterm=NONE
    highlight SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    highlight Question   ctermfg=24   ctermbg=255  cterm=NONE
    highlight Search     ctermfg=fg   ctermbg=222  cterm=NONE
    highlight Folded                  ctermbg=253  cterm=NONE
    highlight NormalFloat ctermfg=231 ctermbg=240  cterm=NONE
  endif
endfunction

augroup vimrc
  autocmd ColorScheme *      call s:colors_default()
  autocmd ColorScheme janah  call s:colors_janah()
  autocmd ColorScheme lucius call s:colors_lucius()
augroup END

if has('gui_running')
  set background=light
  colorscheme lucius
  set guioptions=a
  set mousehide
  if s:is_win
    autocmd GUIEnter * simalt ~x
    let &guifont = 'Consolas:h10:b'
  elseif has('gui_macvim')
    set macmeta
    let &guifont = 'FiraCode Nerd Font:h13'
  endif
  command! Bigger  let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)+1', '')
  command! Smaller let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)-1', '')
else
  syntax on
  "if (empty($TMUX))
  "  if (has("nvim"))
  "    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  "    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "  endif
  "  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  "  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  "  if (has("termguicolors"))
  "    set termguicolors
  "  endif
  "endif
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  if exists('+termguicolors')
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
  " let g:solarized_termcolors=256
  " let g:neosolarized_contrast = "high"
  " let g:neosolarized_visibility = 'high'
  set t_8f=^[[38;2;%lu;%lu;%lum
  set t_8b=^[[48;2;%lu;%lu;%lum
  set background=dark
  colorscheme NeoSolarized
endif





" sync open file with NERDTree
" " Check if NERDTree is open or active
" function! IsNERDTreeOpen()        
"     return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()

" coc config Completetion of concur
" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint', 
"   \ 'coc-prettier', 
"   \ 'coc-json', 
"   \ 'coc-angular'
"   \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
" set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR> 


nnoremap <expr> n  'Nn'[v:searchforward].'zvzz'
nnoremap <expr> N  'nN'[v:searchforward].'zvzz'


" wild stuff
set suffixes     +=.a,.1,.class
set wildignore   +=*.o,*.so,*.zip,*.png
set wildmenu
set wildoptions   =tagfile
if has('nvim-0.4.0')
  set wildoptions+=pum
else
  set wildmode=list:longest,full
endif

" display settings
set display      +=lastline
set laststatus    =2
set list
set modeline
set modelines     =1
set nostartofline
set numberwidth   =1
set ruler
set shortmess     =aoOTI
set showcmd
set showmatch
set showmode
set number
" set relativenumber

map H ^
map L g_
map J 5j
map K 5k
map ,xc :noh<CR>
vmap <C-c> :w !pbcopy<CR><CR> 
set laststatus=2
" set colorcolumn=100

set wrap                          " Turn on line wrapping.
set scrolloff=8                   " Show 3 lines of context around the cursor.
set sidescrolloff=15
set sidescroll=1

"fzf configuration
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=node_modules --exclude=.idea'
"command! FZF FloatermNew fzf
cnoreabbrev Ack Ack!
silent! nmap <leader>pf :GFiles<CR>
" nnoremap <Leader>pf :Files<CR>
" nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
set grepprg=rg

let g:grep_cmd_opts = '--line-numbers --noheading --ignore-dir=log --ignore-dir=tmp'
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)

silent! nmap <leader>pt :Tags<CR>
nnoremap <leader>ss :Rg<CR>
nnoremap <leader>sp :Ack!<Space> 
silent! nmap <leader>fr :History<CR>
silent! nmap <leader>bb :Buffers<CR>
silent! nmap <leader>sc :Commits<CR>
silent! nmap <leader>sk :Maps<CR>
nnoremap <silent><leader>gb  :Git blame<cr>
map <silent><leader>q :q<CR>
map <silent><leader>w :w<CR>
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap <silent><leader>gs  :G<cr>
nnoremap <silent><leader>gc  :Gcommit<cr>
nnoremap <silent><leader>gp  :GPush<cr>
nnoremap <silent><leader>gd  :Gdiffsplit<cr>
nnoremap <leader>cr :CocRestart<cr>
nnoremap <leader>pv :call ToggleNetrw()<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>vr :source %<CR>
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1


" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" " Give more space for displaying messages.
" set cmdheight=2

" set colorcolumn=120
" highlight ColorColumn ctermbg=0 guibg=lightgrey


" backup/swap/info/undo settings
set nobackup
set nowritebackup
set undofile
set swapfile
if has('nvim')
  set backupdir  -=.
  set shada       ='100
else
  set backupdir   =$v/files/backup
  set directory   =$v/files/swap//
  set undodir     =$v/files/undo
  set viewdir     =$v/files/view
  set viminfo     ='100,n$v/files/info/viminfo
endif


" better navigation
set re=1
" set cursorline
" set cursorcolumn
set foldmethod    =marker
set foldopen     -=hor
set foldopen     +=jump
set foldtext      =mhi#foldy()
set hlsearch
set incsearch
set mouse         =a
set scrolloff     =4
set sidescroll    =5
set ignorecase
set smartcase
set tagcase       =match


" misc settings
set backspace     =indent,eol,start
" set clipboard     =unnamed
set completeopt-=noselect
set diffopt      +=vertical,foldcolumn:0,indent-heuristic,algorithm:patience
set hidden
set history       =1000
set lazyredraw
set noerrorbells
set tags         ^=./.git/tags;

" Wild configure
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

" Tab mappings.
" map <leader>wt :tabnew<cr>
map <leader>we :tabedit<cr>
map <leader>wd :tabclose<cr>
map <leader>wo :tabonly<cr>
map <leader>wn :tabnext<cr>
map <leader>wp :tabprevious<cr>
map <leader>wf :tabfirst<cr>
map <leader>wl :tablast<cr>
map <leader>wm :tabmove

autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
" center buffer around cursor when opening files
autocmd BufRead * normal zz
set complete=.,w,b,u,t,k
" let g:gitgutter_max_signs = 1000  " default value
autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)


nnoremap <leader>[ :TlistToggle<CR>
nnoremap <leader>] :TagbarToggle<CR>

" easy motion rebinded
let g:EasyMotion_do_mapping        = 0
let g:EasyMotion_do_shade          = 1
let g:EasyMotion_inc_highlight     = 0
let g:EasyMotion_landing_highlight = 0
let g:EasyMotion_off_screen_search = 0
let g:EasyMotion_smartcase         = 0
let g:EasyMotion_startofline       = 0
let g:EasyMotion_use_smartsign_us  = 1
let g:EasyMotion_use_upper         = 0
let g:EasyMotion_skipfoldedline    = 0

nmap <leader>f <Plug>(easymotion-s2)

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv


" Plugin: vim-startify
nnoremap <leader>st :Startify<cr>

let g:startify_change_to_dir       = 0
let g:startify_custom_header       = 'startify#pad(startify#fortune#boxed())'
let g:startify_enable_special      = 0
let g:startify_fortune_use_unicode = 1
let g:startify_update_oldfiles     = 1
let g:startify_use_env             = 1


cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
nmap <leader>t :term<cr>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bd :bdelete<CR>

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>po :OpenSession 
nnoremap <leader>ps :SaveSession 
nnoremap <leader>pd :DeleteSession<CR>
nnoremap <leader>pc :CloseSession<CR>


" unite ---------------------------------------------------------------------{{{
"
let g:unite_data_directory='~/.nvim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
let g:unite_source_rec_async_command =['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'lib']

nnoremap <silent> <c-p> :Unite -auto-resize -start-insert -direction=botright file_rec/async<CR>
nnoremap <silent> <leader>c :Unite -auto-resize -start-insert -direction=botright colorscheme<CR>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()

function! s:unite_settings() "{{{
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction "}}}


let g:unite_source_menu_menus = {} " Useful when building interfaces at appropriate places
let g:unite_source_menu_menus.git = {
  \ 'description' : 'Fugitive interface',
  \}
let g:unite_source_menu_menus.git.command_candidates = [
  \[' git status', 'Gstatus'],
  \[' git diff', 'Gvdiff'],
  \[' git commit', 'Gcommit'],
  \[' git stage/add', 'Gwrite'],
  \[' git checkout', 'Gread'],
  \[' git rm', 'Gremove'],
  \[' git cd', 'Gcd'],
  \[' git push', 'exe "Git! push " input("remote/branch: ")'],
  \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
  \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
  \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
  \[' git fetch', 'Gfetch'],
  \[' git merge', 'Gmerge'],
  \[' git browse', 'Gbrowse'],
  \[' git head', 'Gedit HEAD^'],
  \[' git parent', 'edit %:h'],
  \[' git log commit buffers', 'Glog --'],
  \[' git log current file', 'Glog -- %'],
  \[' git log last n commits', 'exe "Glog -" input("num: ")'],
  \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
  \[' git log until date', 'exe "Glog --until=" input("day: ")'],
  \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
  \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
  \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
  \[' git mv', 'exe "Gmove " input("destination: ")'],
  \[' git grep',  'exe "Ggrep " input("string: ")'],
  \[' git prompt', 'exe "Git! " input("command: ")'],
  \] " Append ' --' after log to get commit info commit buffers
nnoremap <silent> <Leader>g :Unite -direction=botright -silent -buffer-name=git -start-insert menu:git<CR>
noremap <silent> <leader>gg :Magit<CR>
noremap <silent> <leader>lg :FloatermNew lazygit<CR>
let g:magit_default_fold_level = 0
"" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
nnoremap <leader>d "_d
vnoremap <leader>d "_d


" Window movement shortcuts " move to the window in the direction shown, or create a new window
function! WinMove(key) "{{{
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
endfunction "}}}


" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:NetrwIsOpen=0
let g:netrw_list_hide='.*\.git/$,'.netrw_gitignore#Hide()

function! OpenToRight()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright vnew' g:path
  :normal <C-w>l
endfunction

function! OpenBelow()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright new' g:path
  :normal <C-w>l
endfunction


function! NetrwMappings()
  " Hack fix to make ctrl-l work properly
  noremap <buffer> <A-l> <C-w>l
  noremap <buffer> <C-l> <C-w>l
  noremap <silent> <A-f> :call ToggleNetrw()<CR>
  noremap <buffer> V :call OpenToRight()<cr>
  noremap <buffer> H :call OpenBelow()<cr>
endfunction

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END

" Allow for netrw to be toggled
function! ToggleNetrw()
  if g:NetrwIsOpen
    let i = bufnr("$")
    while (i >= 1)
      if (getbufvar(i, "&filetype") == "netrw")
        silent exe "bwipeout " . i
      endif
      let i-=1
    endwhile
    let g:NetrwIsOpen=0
  else
    let g:NetrwIsOpen=1
    silent Lexplore
  endif
endfunction

" Check before opening buffer on any file
function! NetrwOnBufferOpen()
  if exists('b:noNetrw')
    return
  endif
  call ToggleNetrw()
endfun




" Chrome Cli bindings
"--------------------

function! s:HasFile()
  return expand("%") != ""
endfunction

let g:app_url = 'localhost'
function! s:OpenTab(reload, detached, port)
  let open_tab_command = "open_tab"
  if s:HasFile()
    update
  endif
  if a:reload
    let open_tab_command .= " --reload"
  endif
  if a:detached
    let open_tab_command .= " --detached"
  endif
  if exists("g:app_url")
    let open_tab_command .= " " . g:app_url . ":" . a:port
  endif
  call system(open_tab_command)
endfunction

let g:unite_source_menu_menus.browser = {
  \ 'description' : 'Fugitive interface',
  \}
let g:unite_source_menu_menus.browser.command_candidates = [
  \['What 8080', 'B8080'],
  \['Angular', 'B4200'],
  \['GraphQl 3000', 'B3000'],
  \['pserver 8000', 'B3000'],
  \] " Append ' --' after log to get commit info commit buffers
nnoremap <silent> <Leader>bo :Unite -direction=botright -silent -buffer-name=browser -start-insert menu:browser<CR>

command! B8080 call <sid>OpenTab(1, 0,8080)
command! B4200 call <sid>OpenTab(0, 1,4200)
command! B3000 call <sid>OpenTab(0, 1,3000)
command! B8000 call <sid>OpenTab(0, 1,8000)
nnoremap <leader>ob cr>
