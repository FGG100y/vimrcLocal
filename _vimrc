" ===================================
" fanmh's vimrc (Windows Evns)
" builted: 2018-07-16
" ===================================
"
" #############################
"  Part-I: <Leader> relative
" #############################
let mapleader=","		" leader set to be the comma
" -----------------------------------
" groups of <leader> + ?  | Short Cut
" -----------------------------------
" $MYVIMRC == ~/_vimrc<cr>, True.
" shotcut for source ~/_vimrc


" source vimrc 
nnoremap <leader><leader>s :source ~/_vimrc<cr>
" shotcut for edit ~/_vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
" quick save/exit etc
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
" vertical split help
nnoremap <leader>vh :vert help<cr>


" yanking/pasting with system clipboard
" pasting from sys clipboard to vim
nmap <leader>v "+gp  
" yank to sys clipboard only in Visual Mode
vnoremap <leader>c "+y  


" shotcuts to new tabs and moving around
nnoremap <leader>] :tabn<cr>
nnoremap <leader>[ :tabp<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <leader>tl :tablast<cr>

" quick select buffer
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
" Ctrl + j,k,l,h to move around the panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" turn off highlights
nnoremap <leader><space> :nohlsearch<cr>

" Commenting blocks of code, e.g., sh, python
noremap <silent> <Leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<cr>/<cr>:nohlsearch<cr>
noremap <silent> <Leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<cr>//e<cr>:nohlsearch<cr>

" windows/panes resize
nmap <space>w :vertical resize +3<cr>
nmap W- :vertical resize -3<cr>

" ==== Leader settings end =============
"
"
" #############################
"  Part-II:  Set vim
" #############################

set nocompatible              " be improved, also required for Vundle

" enable syntax highlight
syntax enable
" allow variable syntax highlight approches instead of the default
syntax on

" Do not use a mouse, otherwise :set mouse=n/v/i/a
set mouse=
" backspace for del
set backspace=indent,eol,start
" Split windows manners
set splitbelow
set splitright
" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
" UI settings
set laststatus=2
set ruler
set cursorline
set cursorcolumn
set number relativenumber
set cursorline
set showcmd
set wildmenu
set showmatch
set noshowmode
" always keep cursor away 3 lines from the bottom
set scrolloff=3
set sidescrolloff=3
" do not wrap the code
set nowrap
" code fold
set foldmethod=syntax
" do not fold when first startup vim
set nofoldenable

" py_PEP8
set encoding=utf-8
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" #############################
"  Part-III: colorcolumn groups
" #############################
" gui appearance && colorschemes
" Note: syntax enable is needed
syntax on
syntax enable
set background=dark
if has('gui_running')
    " GUI setting
    colorscheme solarized
    let g:solarized_termcolors=256
    let g:solarized_contrast="normal"
    " call togglebg#map("<F5>")
    " colorscheme zenburn                       " backup colorscheme
    set guifont=Lucida_Console:h9
    " set guifont=Lucida_Console:h10            " some other fonts

    " au GUIEnter * simalt ~x                   " full screen when initiate gvim
    " gui no toolbar
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
else
    " syntax on
    " enable syntax highlight
    " syntax enable
    " set background=dark
    colorscheme solarized
    let g:solarized_termcolors=16
    " Bundle 'jnurmine/Zenburn'
    " colorscheme zenburn
endif

" #############################
"  Part-IV:  Plugins
" #############################
" ----------------------------
" " Vundle for plugins
" ----------------------------
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/  " ~/vimfiles/bundle/Vundle.vim
call vundle#begin()  " '$HOME/.vim/bundle/'
    " alternatively, pass a path where Vundle should install plugins
    " call vundle#begin('~/some/path/here')
    " NOTE: all the Plugins which is managed by Vundle must lie between
    " vundle#begin() and vundle#end
    
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    "-------------------=== Code/Project navigation ===-------------
    " Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plugin 'nathanaelkane/vim-indent-guides'    " indent guides visulized
    Plugin 'kshenoy/vim-signature'              " bookmark etc
    Plugin 'easymotion/vim-easymotion'

    "-------------------=== Other ===-------------------------------
    Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plugin 'rosenfeld/conque-term'              " Consoles as buffers
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'flazz/vim-colorschemes'             " Colorschemes
    Plugin 'altercation/vim-colors-solarized'   " solarized 
    Plugin 'jnurmine/Zenburn'

    "-------------------=== Snippets support ===--------------------
    Plugin 'garbas/vim-snipmate'                " Snippets manager
    Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    Plugin 'tomtom/tlib_vim'                    " dependencies #2
    Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'SuperTab'
    Plugin 'tpope/vim-commentary'               " Comment stuff out
    Plugin 'tpope/vim-fugitive'
    " Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    " Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
    " Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin

    "-------------------=== Python  ===-----------------------------
    Plugin 'python-mode-klen'                   " Python mode (docs, refactor, lints...)
    Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim

    " other plugins
    " =============
    " Plugin 'altercation/vim-colors-solarized'
    " Plugin 'w0rp/ale'
    " Plugin 'itchyny/lightline.vim'
    " Plugin 'octol/vim-cpp-enhanced-highlight'
    " Plugin 'suan/vim-instant-markdown'
    " Plugin 'derekwyatt/vim-fswitch'
call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on    " required


" ----------------------------
" EasyMotion settings
" ----------------------------
let g:EasyMotion_do_mapping=0  " disable default prefix <leader><leader>
let g:EasyMotion_smartcase=1   " case insensitive on
" find motions: line motions
map <leader>f <Plug>(easymotion-f)
map <leader>F <Plug>(easymotion-F)

" ----------------------------
" vim-indent-guides settings
" ----------------------------
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" leader + i to turn on/off the indent_guide
nmap <silent> <leader>i <Plug>IndentGuidesToggle

" ----------------------------
" airline settings
" ----------------------------
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

" ----------------------------
" tagbar settings
" ----------------------------
" set tags=
let g:tagbar_ctags_bin='d:/ctags58/ctags.exe'
let g:tagbar_autofocus=0
let g:tagbar_width=20
let g:tagbar_sort=0
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

" ----------------------------
" snipmate settings
" ----------------------------
let g:snippets_dir='~/.vim/bundle/vim-snippets/snippets'

" ----------------------------
" python-mode settings
" ----------------------------
" python executables for different plugins
let g:pymode_python='python'
let g:syntastic_python_python_exec='python'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
" let g:pymode_doc_bind='K'  " use the default <C-]> and come back with <C-o>

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader><leader>b'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 79 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%80v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=79
    " auto begin in newline when exceed 79 chars
    autocmd FileType python setlocal textwidth=79 formatoptions+=t
    " comment leader for different filetypes
    autocmd FileType sh,python let b:comment_leader = '# '
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<leader>r'
                                 s to "S>"
" ----------------------------    to ">>"
" Syntastic settings             aults to "S>"
" ----------------------------
" 
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=10
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_error_symbol=">>"
let g:syntastic_style_error_symbol="S>"
let g:syntastic_warning_symbol="->"
let g:syntastic_style_warning_symbol="->"
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']
