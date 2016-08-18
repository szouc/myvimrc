set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

filetype off
call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-run-interactive'
Plug 'terryma/vim-multiple-cursors'
Plug 'keith/tmux.vim'
Plug 'Shougo/unite.vim'
Plug 'vim-scripts/mru.vim'
Plug 'myint/syntastic-extras'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'
Plug 'NLKNguyen/papercolor-theme'
Plug 'reedes/vim-colors-pencil'
Plug 'altercation/vim-colors-solarized'
Plug 'google/vim-colorscheme-primary'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'hynek/vim-python-pep8-indent'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'kien/rainbow_parentheses.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/simple-javascript-indenter'
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'fisadev/vim-isort'
Plug 'tpope/vim-fugitive'
Plug 'endel/vim-github-colorscheme'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
call plug#end()
" :PlugInstall
" :PlugUpgrade

let mapleader=','
let g:mapleader=','

syntax enable
set t_Co=256
set laststatus=2
let g:pencil_higher_contrast_ui = 0  " 0=low, 1=high
let g:enable_bold_font = 1
" set background=light
set background=dark
colorscheme PaperColor
" colorscheme hybrid_material
" colorscheme primary
" colors dracula
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" let g:solarized_contrast="normal"
" let g:solarized_visibility="normal"
" colorscheme solarized
" colorscheme pencil
"
" Allow to trigger background
function! ToggleBG()
    let s:tbg = &background
    " Inversion
    if s:tbg == "dark"
        set background=light
    else
        set background=dark
    endif
endfunction
noremap <leader>bg :call ToggleBG()<CR>

set encoding=utf-8
" set ambiwidth=double
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
" Turn Backup off
set nobackup
set nowb
set noswapfile
set history=50
set autoindent
set smartindent
set softtabstop=4
set backspace=2
set textwidth=79
set number
set numberwidth=5
set ttyfast
set mouse=a
set mousemodel=popup
set ruler
" set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set vb t_vb=
" set scrolljump=5
set scrolloff=3
" set sidescrolloff=15
" set sidescroll=1
set nowrap
set colorcolumn=+1

" set guifont=Inconsolata\ for\ Powerline:h14
set guifont=Sauce\ Code\ Powerline:h12
set cursorline
" hi CursorLine cterm=NONE ctermbg=yellow guibg=yellow ctermfg=red guifg=red
hi CursorLine cterm=NONE
hi clear SignColumn
hi clear LineNr
set colorcolumn=120
" set visualbell
set wildmenu
set wildmode=list:longest,full

set tags=tags

" Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
  " set nu!
  " set rnu
endfunction
function! ToggleRelativeOn()
  " set rnu!
  " set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

let g:python_hightlight_all = 1
let g:Python3Syntax = 1
let g:NERDSpaceDelims=1

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_theme = 'solarized'
" let g:airline_theme = 'PaperColor'
" let g:airline_theme = 'pencil'
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
 " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'
  " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

nnoremap <Up> <C-w>10+
nnoremap <Down> <C-w>10-
nnoremap <Left> <C-w>10<
nnoremap <right> <C-w>10>

noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"'
let Tlist_Show_One_File = 1
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

" CtrlP
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" NERDTREE
map <F3> :NERDTreeToggle<CR>
map <C-F3> :NERDTreeFind<CR>
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=0
let NERDTreeDirArrows=0
let NERDTreeAutoCenter=1
let NERDTreeShowFiles=1
let NERDTreeWinSize=30

" Tagbar
let g:tagbar_width=30
nmap <F2> :TagbarToggle<CR>

" indent_guides
let g:indent_guides_enable_on_vim_startup = 0
" let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd ctermbg=lightgrey guibg=lightgrey
hi IndentGuidesEven ctermbg=grey guibg=grey
:nmap <silent><Leader>i <Plug>IndentGuidesToggle

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'C:/Anaconda3/python'
let g:syntastic_checkers=["pyflakes"]
" let g:syntastic_ignore_files = ['.py']
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_python_checkers = ['pyflakes_with_warnings']

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 15
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_camel_case_completion = 1
let g:neocomplete#enable_underbar_completion = 1
let g:neocomplete#fuzzy_completion_start_length = 1
let g:neocomplete#auto_completion_start_length = 1
let g:neocomplete#manual_completion_start_length = 1
" complete with workds from any opened file
let g:neocomplete#same_filetype_lists = {}
let g:neocomplete#same_filetype_lists._ = '_'
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <TAB> <Right><Plug>(neosnippet_jump_or_expand)
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <expr><s-CR> pumvisible() ? neocomplete#smart_close_popup()."\<CR>" : "\<CR>"
" <CR>: close popup and save indent.
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>" "

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
" imap <silent><expr><C-k> neosnippet#expandable() ?
            " \ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
            " \ "\<C-e>" : "\<Plug>(neosnippet_expand_or_jump)")

" set completeopt=longest,menu
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType python setlocal omnifunc=python3complete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete

" jedi
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#auto_initialization = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 1
let g:jedi#auto_close_doc = 1
let g:jedi#show_call_signatures = 1
let g:jedi#force_py_version = 3
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0

" Undotree
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif

" vim-isort
let g:vim_isort_map = '<C-i>'

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Auto_Pairs
let g:AutoPairsFlyMode = 0

au BufNewFile,BufRead *.vue setf vue

let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1
set guioptions-=m " 隐藏菜单栏
set guioptions-=T " 隐藏工具栏
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=r " 隐藏右侧滚动条
set guioptions-=b " 隐藏底部滚动条
set showtabline=0 " 隐藏Tab栏

"默认窗口位置和大小
winpos 235 235
set lines=25 columns=108
