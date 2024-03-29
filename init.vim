call plug#begin('~/.config/nvim/bundle')
" Plug 'sheerun/vim-polyglot'
" Plug 'jonathanfilip/vim-lucius'
Plug 'joshdick/onedark.vim'
" Plug 'sainnhe/vim-color-forest-night'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Plug 'preservim/nerdtree'
Plug 'icymind/NeoSolarized'
Plug 'kaicataldo/material.vim'
Plug 'gruvbox-community/gruvbox'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" " master (neovim git)
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'glepnir/indent-guides.nvim'
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
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-markdown'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'antoinemadec/coc-fzf'
" Plug 'airblade/vim-rooter'
" Plug 'iamcco/coc-angular'
" Plug 'scrooloose/nerdcommenter'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'
" Plug 'majutsushi/tagbar'
" Plug 'vim-scripts/taglist.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'justinmk/vim-sneak'
" Plug 'xolox/vim-session'
" Plug 'xolox/vim-misc'
" Plug 'suan/vim-instant-markdown'
Plug 'terryma/vim-multiple-cursors'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'jreybert/vimagit'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
" Plug 'machakann/vim-highlightedyank'
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'jlanzarotta/bufexplorer'
" Plug 'Yggdroot/indentLine'
" Plug 'unblevable/quick-scope'
" Plug 'metakirby5/codi.vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
            \, { 'on': 'Codi' }
 " See what keys do like in emacs
 Plug 'liuchengxu/vim-which-key'
 " Zen mode
Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
" " Track the engine.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" " brower nvim
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(3) } }
" color css
Plug 'norcalli/nvim-colorizer.lua'

" Plug 'jelera/vim-javascript-syntax'
" Initialize plugin system
call plug#end()

" map  <Leader>m <Plug>(easymotion-bd-f)
" nmap <Leader>m <Plug>(easymotion-overwin-f)

hi LineNr guibg=bg
" set foldcolumn=0
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=bg
highlight VertSplit cterm=NONE


" " Not sure if i want these settings :
" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"
" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
let g:goyo_width = 120
" let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
" if !filereadable(autoload_plug_path)
"   silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs
"         \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
"   autocmd VimEnter * PlugInstall --sync | exe 'source' stdpath('config') . '/init.vim'
" endif
" unlet autoload_plug_path

" call plug#begin(stdpath('data') . '/plugged')

" Opens the nnn window in a split
let g:nnn#layout = { 'right': '~40%' } " or right, up, down
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }

if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

let mapleader = "\<Space>"

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

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" vim-airline
let g:airline_theme = 'solarized'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['windowswap', 'obsession', '%3p%%', 'maxlinenr', ' :%3v'])
" au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['%3p%%'])




" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
set encoding=UTF-8



" Color
" function! s:colors_default() abort
"   highlight Comment cterm=italic
"   highlight link User1 StatusLine   " master branch
"   highlight link User2 StatusLine   " other branch
"   highlight link User3 StatusLine   " separators
"   highlight link User4 StatusLine   " filename at beginning
"   highlight link User5 StatusLine   " ~changes
"   highlight link SignifySignAdd    DiffAdd
"   highlight link SignifySignDelete DiffDelete
"   highlight link SignifySignChange DiffChange
"   highlight Halo guifg=white guibg=#F92672 ctermfg=white ctermbg=197
" endfunction

" function! s:colors_janah() abort
"   highlight User1  ctermfg=192 ctermbg=237 cterm=NONE
"   highlight User2  ctermfg=167 ctermbg=237 cterm=NONE
"   highlight User3  ctermfg=245 ctermbg=237 cterm=NONE
"   highlight User4  ctermfg=215 ctermbg=237 cterm=NONE
"   highlight User5  ctermfg=111 ctermbg=237 cterm=NONE
" endfunction

" function! s:colors_lucius() abort
"   if &background ==# 'light'
"     highlight Normal                  ctermbg=NONE guibg=NONE
"     highlight CursorLine              ctermbg=255
"     highlight User1      ctermfg=84   ctermbg=237  cterm=NONE
"     highlight User2      ctermfg=222  ctermbg=237  cterm=NONE
"     highlight User3      ctermfg=237  ctermbg=237  cterm=NONE
"     highlight User4      ctermfg=255  ctermbg=237  cterm=NONE
"     highlight User5      ctermfg=255  ctermbg=237  cterm=NONE
"     highlight StatusLine              ctermbg=237  cterm=NONE
"     highlight SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
"     highlight Question   ctermfg=24   ctermbg=255  cterm=NONE
"     highlight Search     ctermfg=fg   ctermbg=222  cterm=NONE
"     highlight Folded                  ctermbg=253  cterm=NONE
"     highlight NormalFloat ctermfg=231 ctermbg=240  cterm=NONE
"   endif
" endfunction

" augroup vimrc
"   autocmd ColorScheme *      call s:colors_default()
"   autocmd ColorScheme janah  call s:colors_janah()
"   autocmd ColorScheme lucius call s:colors_lucius()
" augroup END

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
    " let &guifont = 'SauceCodePro Nerd Font:h17'
    " let &guifont = 'Hack\\ Nerd\\ Font\\ Mono'
  endif
  command! Bigger  let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)+1', '')
  command! Smaller let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)-1', '')
else
  syntax on
  if (empty($TMUX))
    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endif
  endif
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  if exists('+termguicolors')
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
  let g:solarized_termcolors=256
  let g:onedark_terminal_italics=1
  let g:neosolarized_contrast = "high"
  let g:neosolarized_visibility = 'high'
  set t_8f=^[[38;2;%lu;%lu;%lum
  set t_8b=^[[48;2;%lu;%lu;%lum
  set background=dark
  colorscheme material
endif


function! CloseAllBuffersButCurrent()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction

nmap <Leader> :call CloseAllBuffersButCurrent()<CR>
" let g:diagnostic_virtual_text_prefix = ''
" let g:diagnostic_enable_virtual_text = 1

" let g:completion_confirm_key = "\<C-y>"
" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" let g:completion_enable_snippet = 'UltiSnips'
" let g:completion_matching_smart_case = 1
" let g:completion_trigger_on_delete = 1

" let g:signify_sign_add = '▎'
" let g:signify_sign_delete = '▎'
" let g:signify_sign_delete_first_line = '▎'
" let g:signify_sign_change = '▎'

" call sign_define("LspDiagnosticsErrorSign", {"text" : "E", "texthl" : "LspDiagnosticsError"})
" call sign_define("LspDiagnosticsWarningSign", {"text" : "W", "texthl" : "LspDiagnosticsWarning"})
" call sign_define("LspDiagnosticsInformationSign", {"text" : "I", "texthl" : "LspDiagnosticsInformation"})
" call sign_define("LspDiagnosticsHintSign", {"text" : "H", "texthl" : "LspDiagnosticsHint"})

lua << EOF
   require'colorizer'.setup()
EOF


 " local nvim_lsp = require('lspconfig')
" local on_attach = function(_, bufnr)
 "  require('completion').on_attach()
 "  local opts = { noremap=true, silent=true }
 "  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 "  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
 "  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 "  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 "  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 "  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xd', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
" end
" local servers = {'jsonls', 'vimls', 'tsserver', 'cssls', 'bashls', 'html' , 'angularls'}
" for _, lsp in ipairs(servers) do
 "  nvim_lsp[lsp].setup {
 "    on_attach = on_attach,
 "  }
" end
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
set updatetime=10

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
" autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end



" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


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
set nocursorline
set termguicolors
set nocursorcolumn
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
" set number
syntax sync minlines=200
syntax sync maxlines=300
" set relativenumber

" set colorcolumn=120

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
let g:fzf_tags_command = 'actags -R --exclude=.git --exclude=node_modules --exclude=.idea'
command! FZF FloatermNew fzf
" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore-dir .git --ignore-dir node_modules -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

cnoreabbrev Ack Ack!

let g:grep_cmd_opts = '--line-numbers --noheading --ignore-dir=log --ignore-dir=tmp'
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)


" rg --files --hidden --follow --glob "!{.git,.svn,node_modules,bower_components}"
set grepprg=rg\ --vimgrep
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --follow --glob "!{.git,node_modules}" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --follow --glob "!{.git/*,node_modules}" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)


" Always enable preview window on the right with 60% width
" let g:fzf_preview_window = 'right:60%'
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

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
set cmdheight=2

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

if has('folding')
  if has('windows')
    set fillchars=vert:'              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
    " set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

" better navigation
set re=1
" set cursorline
" set cursorcolumn
" set foldmethod    =marker
" set foldopen     -=hor
" set foldopen     +=jump
" set foldtext      =mhi#foldy()
set nocompatible
" set foldlevel=1
" set foldlevelstart=1
" set foldmethod=manual
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
set diffopt      +=vertical,foldcolumn:0,indent-heuristic,algorithm:patience
set hidden
set history       =1000
set lazyredraw
set ttyfast
set norelativenumber
set redrawtime=10000
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
set formatoptions-=cro
set iskeyword+=-
set t_Co=256
" set ruler
"
if has("mac")
  if exists("+relativenumber")
  endif

endif

autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
" center buffer around cursor when opening files
autocmd BufRead * normal zz
" set complete=.,w,b,u,t,k
set cot=menuone,noinsert,noselect shm+=c
" let g:gitgutter_max_signs = 1000  " default value
autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

let g:codi#interpreters = {
          \     'node': {
          \         'bin': 'node',
          \     },
          \     'haskell': {
          \         'bin': 'ghci',
          \     },
          \     'typescript': {
          \         'bin': 'tsun',
          \     },
          \     'python': {
          \         'bin': 'python3',
          \     },
          \ }


let g:startify_list_order = [
      \ ['   Bookmarks'], 'bookmarks',
      \ ['   Sessions'], 'sessions',
      \ ['   Files'], 'files',
      \ ['   Directory'], 'dir',
      \ ['   Commands'], 'commands']
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:startify_session_delete_buffers = 1
let g:startify_session_autoload = 1
let g:startify_relative_path = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_sort = 1
let g:startify_bookmarks = [
            \ { 'v': '~/Documents/Arthrexact/arthrexvip' },
            \ { 'd': '~/Documents/openSource/dialogue' },
            \ ]
let g:startify_change_to_dir       = 0
let g:startify_custom_header       = 'startify#pad(startify#fortune#boxed())'
let g:startify_enable_special      = 0
let g:startify_fortune_use_unicode = 1
let g:startify_update_oldfiles     = 1
let g:startify_use_env             = 1
let g:startify_ascii = [
      \ '     ___           ___           ___           ___           ___           ___           ___',
      \ '    /  /\         /__/\         /  /\         /  /\         /  /\         /__/\         /  /\',
      \ '   /  /::\       _\_ \:\       /  /:/_       /  /:/_       /  /::\       |  |::\       /  /:/_',
      \ '  /  /:/\:\     /__/\ \:\     /  /:/ /\     /  /:/ /\     /  /:/\:\      |  |:|:\     /  /:/ /\',
      \ ' /  /:/~/::\   _\_ \:\ \:\   /  /:/ /:/_   /  /:/ /::\   /  /:/  \:\   __|__|:|\:\   /  /:/ /:/_',
      \ '/__/:/ /:/\:\ /__/\ \:\ \:\ /__/:/ /:/ /\ /__/:/ /:/\:\ /__/:/ \__\:\ /__/::::| \:\ /__/:/ /:/ /\',
      \ '\  \:\/:/__\/ \  \:\ \:\/:/ \  \:\/:/ /:/ \  \:\/:/~/:/ \  \:\ /  /:/ \  \:\~~\__\/ \  \:\/:/ /:/',
      \ ' \  \::/       \  \:\ \::/   \  \::/ /:/   \  \::/ /:/   \  \:\  /:/   \  \:\        \  \::/ /:/',
      \ '  \  \:\        \  \:\/:/     \  \:\/:/     \__\/ /:/     \  \:\/:/     \  \:\        \  \:\/:/',
      \ '   \  \:\        \  \::/       \  \::/        /__/:/       \  \::/       \  \:\        \  \::/',
      \ '    \__\/         \__\/         \__\/         \__\/         \__\/         \__\/         \__\/',]
let g:startify_custom_header = map(g:startify_ascii, "\"   \".v:val")


cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1



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


augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

" open google tabs using quick mapping :S
command! B8080 call <sid>OpenTab(1, 0,8080)
command! B4200 call <sid>OpenTab(0, 1,4200)
command! B3000 call <sid>OpenTab(0, 1,3000)
command! B8000 call <sid>OpenTab(0, 1,8000)
" Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


 "Because of some bug command+/ dont work so i send ++ keys from alacritty
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)
nnoremap <expr> n  'Nn'[v:searchforward].'zvzz'
nnoremap <expr> N  'nN'[v:searchforward].'zvzz'
map H ^
map L g_
map J 5j
map K 5k
map ,xc :noh<CR>
vmap <C-c> :w !pbcopy<CR><CR>
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" nmap <leader>gh :diffget //3<CR>
" nmap <leader>gf :diffget //2<CR>
vmap < <gv
vmap > >gv
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
" map s <Plug>Sneak_s
" map F <Plug>Sneak_S
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T
" let g:sneak#label = 1
" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=190


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual
" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

map <leader>r :source %<CR>
" Single mappings
let g:which_key_map['/'] = [ ':Commentary'                , 'comment' ]
let g:which_key_map['['] = [ ':TlistToggle'               , 'tlist toggle' ]
let g:which_key_map[']'] = [ ':TagbarToggle'              , 'tagbar toggle' ]
let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
" adding debugging options
" let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':NvimTreeToggle'             , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['W'] = [ 'w'                          , 'write' ]
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]
let g:which_key_map['i'] = [ ':CocList marketplace'       , 'Coc marketplace' ]
let g:which_key_map['f'] = [ ':Files'       , 'search files' ]
silent! nmap <leader>fr :History<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
nnoremap <leader>j :%!jq .<CR>
" Group mappings
" w is for actions
let g:which_key_map.w = {
      \ 'name' : '+Tab' ,
      \ 't' : [':tabedit'               , 'open tab'],
      \ 'c' : [':tabclose'              , 'close tab'],
      \ 'n' : [':tabnext'               , 'next tab'],
      \ 'p' : [':tabprevious'           , 'previous tab'],
      \ 'f' : [':tabfirst'              , 'first tab'],
      \ 'l' : [':tablast'               , 'last tab'],
      \ }
" p is for actions
let g:which_key_map.p = {
      \ 'name' : '+Session' ,
      \ 'o' : ['OpenSession'            , 'Open Session'],
      \ 's' : ['SaveSession'            , 'Save Session'],
      \ 'd' : ['DeleteSession'          , 'Delete Session'],
      \ 'c' : ['CloseSession'           , 'Close Session'],
      \ 'v' : [':call ToggleNetrw()'    , 'Open Netrw'],
      \ 'l' : [':CocList project'       , 'Project list'],
      \ }
" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ }

let g:which_key_map.o = {
      \ 'name' : '+Browser' ,
      \'v' : ['What 8080'              , 'B8080'],
      \'a' : ['Angular'                , 'B4200'],
      \'g' : ['GraphQl 3000'           , 'B3000'],
      \'py': ['pserver 8000'           , 'B3000'],
      \'p' : [':NvimTreeToggle'   , 'File explorer'],
      \'n' : ['NnnPicker'              , 'nnn File explorer']
      \ }
" \'p' : ['NERDTreeToggle'         , 'File explorer'],
" b is for buffer
" nmap <Leader> :call CloseAllBuffersButCurrent()<CR>

let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'                                           , 'buffer 1']        ,
      \ '2' : ['b2'                                           , 'buffer 2']        ,
      \ 'd' : ['bd'                                           , 'delete-buffer']   ,
      \ 'c' : [':call CloseAllBuffersButCurrent()<CR>'        , 'closeAll-buffer'] ,
      \ 'f' : ['bfirst'                                       , 'first-buffer']    ,
      \ 'h' : ['Startify'                                     , 'home-buffer']     ,
      \ 'b' : [':Buffers'                                     , 'open buffers']    ,
      \ 'l' : ['blast'                                        , 'last-buffer']     ,
      \ 'n' : ['bnext'                                        , 'next-buffer']     ,
      \ 'p' : ['bprevious'                                    , 'previous-buffer'] ,
      \ '?' : ['Buffers'                                      , 'fzf-buffer']      ,
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p':  [':Ack! '                 , 'search text ack'] ,
      \ 'ht': [':Helptags'              , 'help tags'] ,
      \ 's':  [':Rg'                    , 'search text fzf'],
      \ 'sn': [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Tags'                  , 'Search Tags'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \'s' : [' Gstatus', '  git status '],
      \'d' : ['Gvdiff', '  git diff '],
      \'c' : ['Gcommit', '  git commit '],
      \'w' : ['Gwrite', '  git stage/add '],
      \'ch': ['Gread', '  git checkout '],
      \'rm': ['Gremove', '  git rm '],
      \'cd': ['Gcd', '  git cd '],
      \'p' : ['exe "Git! push " input("remote/branch: ")', '  git push '],
      \'P' : ['exe "Git! pull " input("remote/branch: ")', '  git pull '],
      \'r' : ['exe "Git! pull --rebase " input("branch: ")', '  git pull rebase '],
      \'cb': ['exe "Git! checkout " input("branch: ")', '  git checkout branch '],
      \'f' : ['Gfetch', '  git fetch '],
      \'m' : ['Gmerge', '  git merge '],
      \'b' : ['Gblame', '  git blame '],
      \'br': ['Gbrowse', '  git browse '],
      \'h' : ['Gedit HEAD^', '  git head '],
      \'up': ['edit %:h', '  git parent '],
      \'bl': ['Glog --', '  git log commit buffers '],
      \'l' : ['Glog -- %', '  git log current file '],
      \'ll': ['exe "Glog -" input("num: ")', '  git log last n commits '],
      \'lf': ['exe "Glog --reverse -" input("num: ")', '  git log first n commits '],
      \'ld': ['exe "Glog --until=" input("day: ")', '  git log until date '],
      \'lg': ['exe "Glog --grep= " input("string: ")',  '  git log grep commits '],
      \'lp': ['exe "Glog -S" input("string: ")',  '  git log pickaxe '],
      \'i' : ['exe "Gedit " input("branchname\:filename: ")', '  git index '],
      \'g' : ['Magit', '  git Magit '],
      \'gm': ['exe "Gmove " input("destination: ")', '  git mv '],
      \'gr': ['exe "Ggrep " input("string: ")',  '  git grep '],
      \'gp': ['exe "Git! " input("command: ")', '  git prompt '],
      \ }

" Why i added seperate language server bindings :/
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <F2> <Plug>(coc-rename)
" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=20'       , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'b' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'h' : [':FloatermNew htop'                              , 'htop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

" nmap <leader>dd :call vimspector#Launch()<CR>
" nmap <leader>dx :VimspectorReset<CR>
" nmap <leader>de :VimspectorEval
" nmap <leader>dw :VimspectorWatch
" nmap <leader>do :VimspectorShowOutput
" vimspector_enable_mappings
" let g:vimspector_enable_mappings = 'HUMAN'

" " t is for terminal
" let g:which_key_map.d = {
"       \ 'name' : '+terminal' ,
"       \ 'd' : [':call vimspector#Launch()<CR>'                  , 'initDebugger'],
"       \ 'x' : [':VimspectorReset<CR>'                           , 'reset'],
"       \ 'e' : [':VimspectorEval'                                , 'eval'],
"       \ 'w' : [':VimspectorWatch'                               , 'watch'],
"       \ 'o' : [':VimspectorShowOutput'                          , 'showOutput'],
"       \ }

call which_key#register('<Space>', "g:which_key_map")


lua <<EOF
  require'nvim-tree'.setup {
    disable_netrw        = true,
    hijack_netrw         = true,
    open_on_setup        = false,
    ignore_ft_on_setup   = {},
    auto_close           = false,
    auto_reload_on_write = true,
    open_on_tab          = false,
    hijack_cursor        = false,
    update_cwd           = false,
    update_to_buf_dir    = {
    enable = true,
    auto_open = true,
    },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
      }
  },
    update_focused_file = {
      enable      = false,
      update_cwd  = false,
      ignore_list = {}
    },
  system_open = {
      cmd  = nil,
      args = {}
    },
  filters = {
      dotfiles = false,
      custom = {}
    },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
    view = {
      width = 30,
      height = 30,
      hide_root_folder = false,
      side = 'left',
      auto_resize = false,
      mappings = {
        custom_only = true,
        list = {
          { key = {"<CR>", "l", "<2-LeftMouse>"}, action = "edit" },
          { key = {"O"},                          action = "edit_no_picker" },
          { key = {"<2-RightMouse>", "<C-]>"},    action = "cd" },
          { key = "<C-v>",                        action = "vsplit" },
          { key = "<C-x>",                        action = "split" },
          { key = "<C-t>",                        action = "tabnew" },
          { key = "<",                            action = "prev_sibling" },
          { key = ">",                            action = "next_sibling" },
          { key = "P",                            action = "parent_node" },
          { key = "h",                            action = "close_node" },
          { key = "<Tab>",                        action = "preview" },
          { key = "K",                            action = "first_sibling" },
          { key = "J",                            action = "last_sibling" },
          { key = "I",                            action = "toggle_ignored" },
          { key = "H",                            action = "toggle_dotfiles" },
          { key = "R",                            action = "refresh" },
          { key = "a",                            action = "create" },
          { key = "d",                            action = "remove" },
          { key = "D",                            action = "trash" },
          { key = "r",                            action = "rename" },
          { key = "<C-r>",                        action = "full_rename" },
          { key = "x",                            action = "cut" },
          { key = "c",                            action = "copy" },
          { key = "p",                            action = "paste" },
          { key = "y",                            action = "copy_name" },
          { key = "Y",                            action = "copy_path" },
          { key = "gy",                           action = "copy_absolute_path" },
          { key = "[c",                           action = "prev_git_item" },
          { key = "]c",                           action = "next_git_item" },
          { key = "-",                            action = "dir_up" },
          { key = "s",                            action = "system_open" },
          { key = "q",                            action = "close" },
          { key = "g?",                           action = "toggle_help" },
          } 
        },
      number = false,
      relativenumber = false,
      signcolumn = "yes"
      },
    trash = {
      cmd = "trash",
      require_confirm = true
      },
    actions = {
      change_dir = {
        global = false,
        },
      open_file = {
        quit_on_open = false,
        }
      }
    }
EOF


" vimrc
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" let nvim_tree_disable_keybindings=1
" let nvim_tree_disable_default_keybindings = 1

" let g:nvim_tree_bindings= {
"     \ 'edit':            ['<CR>', 'l'],
"     \ 'edit_vsplit':     '<C-v>',
"     \ 'edit_split':      '<C-x>',
"     \ 'edit_tab':        '<C-t>',
"     \ 'close_node':      ['<S-CR>', 'h'],
"     \ 'toggle_ignored':  'I',
"     \ 'toggle_dotfiles': '.',
"     \ 'refresh':         'R',
"     \ 'preview':         '<Tab>',
"     \ 'cd':              '<C-]>',
"     \ 'create':          'a',
"     \ 'remove':          'd',
"     \ 'rename':          'r',
"     \ 'cut':             'x',
"     \ 'copy':            'c',
"     \ 'paste':           'p',
"     \ 'prev_git_item':   '[c',
"     \ 'next_git_item':   ']c',
"     \ }

" Disable default mappings by plugin
" Bindings are enable by default, disabled on any non-zero value
" let lua_tree_disable_keybindings=1

" default will show icon by default if no icon is provided
" default shows no icon by default
" let g:nvim_tree_icons = {
"     \ 'default': '',
"     \ 'symlink': '',
"     \ 'git': {
"     \   'unstaged': "✗",
"     \   'staged': "✓",
"     \   'unmerged': "",
"     \   'renamed': "➜",
"     \   'untracked': "★"
"     \   },
"     \ 'folder': {
"     \   'default': "",
"     \   'open': "",
"     \   'empty': "",
"     \   'empty_open': "",
"     \   'symlink': "",
"     \   }
"     \ }


" highlight NvimTreeFolderIcon guibg=blue

" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :LuaTreeRefresh<CR>
" nnoremap <leader>n :LuaTreeFindFile<CR>
" LuaTreeOpen and LuaTreeClose are also available if you need them

" set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help lua_tree_highlight`
" highlight LuaTreeFolderIcon guibg=blue1
