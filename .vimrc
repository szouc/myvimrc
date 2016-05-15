set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
" Plugin 'Townk/vim-autoclose'
Plugin 'posva/vim-vue'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
" Plugin 'skammer/vim-css-color'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'mbbill/undotree'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'reedes/vim-colors-pencil'
Plugin 'altercation/vim-colors-solarized'
Plugin 'google/vim-colorscheme-primary'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'davidhalter/jedi-vim'
Plugin 'hdima/python-syntax'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/simple-javascript-indenter'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'fisadev/vim-isort'
Plugin 'tpope/vim-fugitive'

filetype plugin indent on

call vundle#end()
" :PluginInstall!
" :PluginClean

syntax enable
set t_Co=256
set laststatus=2
let g:pencil_higher_contrast_ui = 0  " 0=low, 1=high
let g:enable_bold_font = 1
" set background=light
set background=dark
" colorscheme PaperColor
" colorscheme hybrid_material
" colorscheme primary
let g:solarized_termcolors=256
colorscheme solarized
" colorscheme pencil

set encoding=utf-8
" set ambiwidth=double
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set nobackup
set autoindent
set smartindent
set softtabstop=4
set backspace=2
set textwidth=79
set number
set mousemodel=popup
set ruler
set showcmd
set scrolloff=3
set nowrap

set cursorline
" hi CursorLine cterm=NONE ctermbg=yellow guibg=yellow ctermfg=red guifg=red
hi CursorLine cterm=NONE 
set colorcolumn=120

set tags=tags

let g:python_hightlight_all = 1
let g:Python3Syntax = 1

let g:mapleader=','
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
let g:airline_theme = 'PaperColor'
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

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "²»Í¬Ê±ÏÔÊ¾¶à¸öÎÄ¼þµÄtag£¬Ö»ÏÔÊ¾µ±Ç°ÎÄ¼þµÄ
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1 " ·Çµ±Ç°ÎÄ¼þ£¬º¯ÊýÁÐ±íÕÛµþÒþ²Ø
let Tlist_Exit_OnlyWindow = 1          "Èç¹ûtaglist´°¿ÚÊÇ×îºóÒ»¸ö´°¿Ú£¬ÔòÍË³övim
let Tlist_Use_Right_Window = 1         "ÔÚÓÒ²à´°¿ÚÖÐÏÔÊ¾taglist´°¿Ú 

" CtrlP
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" NERDTREE
map <F3> :NERDTreeToggle<CR>
map <C-F3> :NERDTreeFind<CR>
let NERDTreeChDirMode=2  "Ñ¡ÖÐroot¼´ÉèÖÃÎªµ±Ç°Ä¿Â¼
let NERDTreeQuitOnOpen=1 "´ò¿ªÎÄ¼þÊ±¹Ø±ÕÊ÷
let NERDTreeShowBookmarks=1 "ÏÔÊ¾ÊéÇ©
let NERDTreeMinimalUI=0 "²»ÏÔÊ¾°ïÖúÃæ°å
let NERDTreeDirArrows=0 "Ä¿Â¼¼ýÍ· 1 ÏÔÊ¾¼ýÍ·  0´«Í³+-|ºÅ
let NERDTreeAutoCenter=1 " ¿ØÖÆµ±¹â±êÒÆ¶¯³¬¹ýÒ»¶¨¾àÀëÊ±£¬ÊÇ·ñ×Ô¶¯½«½¹µãµ÷Õûµ½ÆÁÖÐÐÄ
let NERDTreeShowFiles=1 " ÊÇ·ñÄ¬ÈÏÏÔÊ¾ÎÄ¼þ
let NERDTreeWinSize=30 " ´°¿Ú¿í

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
let g:syntastic_python_python_exec = '/home/sz/anaconda3/bin/python'
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

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
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
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
    " let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" <CR>: close popup and save indent.
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>" "

" " SuperTab like snippets behavior.
" imap <expr><TAB>
 " \ pumvisible() ? "\<C-n>" :
 " \ neosnippet#expandable_or_jumpable() ?
 " \    "\<TAB>" : "\<Plug>(neosnippet_expand_or_jump)"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

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
let g:AutoPairsShortcutBackInsert = '<M-b>'

au BufNewFile,BufRead *.vue setf vue
