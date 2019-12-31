" ===================================
" fanmh's vimrc (Windows Evns)
" builted: 2018-07-16
" ===================================
"

set nocompatible                                " be iMproved

" ALWAYS PUT PLUGINS FIRST PLACE
" TO ADVOID SOME SILLY MISTAKES.
" #############################
"  Part-I:  Plugins
" #############################
" ----------------------------
" " Vundle for plugins management
" ----------------------------
filetype off                                    " required

set rtp+=$HOME/.vim/bundle/Vundle.vim/          " set the runtime path to include Vundle and initialize
" set rtp+= ~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path and call
" vundle#begin('~/some/path/here')
" NOTE: all the Plugins which is managed
" by Vundle must lie between
" vundle#begin() and vundle#end

    "-------------------=== Vundle itself ===-------------
    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plugin 'nathanaelkane/vim-indent-guides'    " indent guides visulized
    Plugin 'kshenoy/vim-signature'              " bookmark etc
    Plugin 'easymotion/vim-easymotion'
    Plugin 'Vimjas/vim-python-pep8-indent'
    " Plugin 'Yggdroot/LeaderF'                  	" locating files,buffers,mrus,ctags,gtags...
    " Plugin 'scrooloose/nerdtree'                " Project and file navigation

    "-------------------=== Other ===-------------------------------
    Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'flazz/vim-colorschemes'             " Colorschemes
    Plugin 'altercation/vim-colors-solarized'   " solarized
    Plugin 'jnurmine/Zenburn'
    " Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    " Plugin 'rosenfeld/conque-term'              " Consoles as buffers

    "-------------------=== Snippets support ===--------------------
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'                 " snippets repo
    " Plugin 'garbas/vim-snipmate'                " Snippets manager
    " Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    " Plugin 'tomtom/tlib_vim'                    " dependencies #2

    "-------------------=== Languages support ===-------------------
    Plugin 'supertab'
    Plugin 'tpope/vim-commentary'                 " Comment stuff out
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'                   " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'tpope/vim-repeat'                     " repeat the operatoins
    Plugin 'tpope/vim-abolish'                    " the Supercharge version of vim's %s
    Plugin 'tpope/vim-obsession'                  " mksession enhencement
    Plugin 'scrooloose/nerdcommenter' 		  " comment things out
    Plugin 'hdima/Python-Syntax' 		  " syntax highlight for python
    Plugin 'davidhalter/jedi-vim'
    " Plugin 'Valloric/YouCompleteMe'               " Autocomplete plugin
    " Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin

    "-------------------=== Code checking= ==-----------------------------
    " Plugin 'python-mode/python-mode'
    " Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim
    Plugin 'w0rp/ale'

    " other plugins
    " =============
    " Plugin 'altercation/vim-colors-solarized'
    " Plugin 'itchyny/lightline.vim'
    " Plugin 'octol/vim-cpp-enhanced-highlight'
    " Plugin 'suan/vim-instant-markdown'
    " Plugin 'derekwyatt/vim-fswitch'

    " local installation using the ['file://'+'absolute path'] protocol
call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on    " required


" #############################
"  Part-II: <Leader> relative
" #############################
let mapleader=","		" leader set to be the comma
" -----------------------------------
" groups of <leader> + ?  | Short Cut
" -----------------------------------

" use <C-[> instead of <C-c> to change to normal mode
" <C-c> can do the trick, but it is not what Esc means
nnoremap <C-[> <Esc>

" source vimrc
nnoremap <leader><leader>s :source ~/_vimrc<cr> :echo "*** vimrc reloaded ***"<cr>
" shotcut for edit ~/_vimrc
" $MYVIMRC == ~/_vimrc<cr>, True.
nnoremap <leader>ev :tabnew <bar> :e $MYVIMRC<cr>
nnoremap <leader>sv :sp $MYVIMRC<cr>
" vertical split help
nnoremap <leader>vh :vert help<cr>
" quick save/exit etc
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" yanking/pasting with system clipboard
" pasting from sys clipboard to vim
nmap <leader>p "+gp
" yank to sys clipboard only in Visual Mode
vnoremap <leader>y "+y

" Ctrl + j,k,l,h to move around the panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" or consider the <leader> combinations
"nnoremap <leader>jw <C-W>j
"nnoremap <leader>kw <C-W>k
"nnoremap <leader>lw <C-W>l
"nnoremap <leader>hw <C-W>h
" looping the panes
nnoremap nw <C-W><C-W>

" shotcuts to new tabs and moving around
nnoremap <leader>] :tabn<cr>
nnoremap <leader>[ :tabp<cr>
" nnoremap <leader>tn :tabnew<cr>
" nnoremap <leader>tc :tabclose<cr>
" nnoremap <leader>to :tabonly<cr>
" nnoremap <leader>tm :tabmove<cr>
" nnoremap <leader>tl :tablast<cr>

" quick select buffer and delete it
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bd<cr>
" turn off highlights
nnoremap <leader><space> :nohlsearch<cr>

" trim all the ending whitespace
" nnoremap <leader><leader>t :%s/\s\+$//g<cr>
" trim all the ending whitespace with confirmation
nnoremap <leader><leader>t :%s/\s\+$//

" generate tag file, so we can Ctrl-] to goto definitions
nnoremap <f9> :!ctags -R<cr>

" windows/panes resize
nmap <space>w :vertical resize +3<cr>
nmap W- :vertical resize -3<cr>
nmap <s-w> :resize +5<cr>

" Explore the file in current path
nnoremap EX :Explore<cr>

" python pdb in ipython
iab idb __import__('pdb').set_trace()
" abbrev  %T == %H:%M:%S
iab dts <c-r>=strftime("%A %m-%d %T %Y")<cr>

" only for C++ Learning 周三 10-30 11:01:36 2019
iab stdlib #include "../std_lib_facilities.h"<cr>

" python shebang
iab #! #!/usr/bin/env python<cr># encoding: utf-8<cr><cr>
iab ifmain if __name__ == "__main__":
"
"
" #############################
"  Part-III:  Set vim
" #############################

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
set showcmd
set wildmenu
set showmatch
set noshowmode
" always keep cursor away 5 lines from the bottom
set scrolloff=7
set sidescrolloff=3
" do not wrap the code
set nowrap
" code fold
set foldmethod=manual
set foldnestmax=16
" set foldlevel=2
" do not fold when first startup vim
set nofoldenable
" press Space to toggle the current fold open/closed in noral mode
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<cr>
vnoremap <Space> zf

" py_PEP8
set encoding=utf-8

" #############################
"  Part-IV: colorcolumn groups
" #############################
" gui appearance && colorschemes
" Note: syntax enable is needed
syntax on
syntax enable
set background=dark
if has('gui_running')
    " GUI setting
    colorscheme zenburn                       " backup colorscheme
    set guifont=Lucida_Console:h9
    " set guifont=Lucida_Console:h10            " some other fonts
    au GUIEnter * simalt ~x                   " full screen when initiate gvim
    " gui no toolbar
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
else
    " set background=light
    " let g:solarized_contrast="normal"
    " let g:solarized_termcolors=256
    " colorscheme solarized
    " call togglebg#map("<F5>")

    " solarized8: true-color enabled terminal
    " colorscheme solarized8_dark
    colorscheme solarized8_dark_high
    " colorscheme solarized8_dark_flat
endif


" #############################
" Part-V: plugin setting groups
" #############################
" ----------------------------
" Jedi-vim
" ----------------------------
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 1
" do not pop on dot (slow down editing)
let g:jedi#popup_on_dot = 0
" <C-Space> bonded to system input method already!
" let g:jedi#completions_command = "<C-Space>"
let g:jedi#completions_command = "<C-N>"
"1" to pop-up in the buffer;
"2" to vim's command line aligned with func-call
let g:jedi#show_call_signatures = "2"
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"

" ----------------------------
" Python-Syntax
" ----------------------------
let python_highlight_all = 1

" ----------------------------
" LeaderF
" ----------------------------
" let g:Lf_ShortcutF = '<c-p>'
" let g:Lf_ShortcutB = '<m-n>'
" noremanp <c-n> :LeaderfMru<cr>
" noremanp <m-n> :LeaderfBuffer<cr>
" noremanp <m-p> :LeaderfFunction!<cr>
" noremanp <m-m> :LeaderfTag<cr>
" let g:Lf_StlSeparator = { 'left': '', 'right':'', 'font':'' }
" let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
" let g:Lf_WorkingDirectoryMode = 'Ac'
" let g:Lf_WindowHeight = 0.30
" let g:Lf_CacheDirectory = expand('~/.vim/cache')
" let g:Lf_ShowRelativePath = 0
" let g:Lf_HideHelp = 1
" let g:Lf_StlColorscheme = 'powerline'
" let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
" let g:Lf_Ctags = "d:/ctags58/ctags.exe"

" ----------------------------
" nerdcommenter
" ----------------------------
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" ----------------------------
" vim_signature
" ----------------------------
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" ----------------------------
" vim_python_pep8_indent
" ----------------------------
let g:python_pep8_indent_multiline_string = 1
let g:python_pep8_indent_hang_closing = 1

" ----------------------------
" ctrlp settings
" ----------------------------
let g:ctrlp_map='<C-p>'                          " Invoke the Ctrlp in Normal mode
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1                   " <C-d> toggle on/off inside
let g:ctrlp_tabpage_position = 'ac'           " Put the new tab page 'a'fter 'c'urrent tab page
" let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_max_files = 10000
"" MRU mode options:~
let g:ctrlp_mruf_max = 100
let g:ctrlp_mruf_exclude = '^C:\\dev\\tmp\\.*' " Windows
"let g:ctrlp_mruf_include = '\.py$\|\.cpp$'
"" Set this to 1 to show only MRU files in the current working directory: >
"let g:ctrlp_mruf_relative = 0
"" Note: you can use a custom mapping to toggle this option inside the prompt: >
"let g:ctrlp_prompt_mappings = { 'ToggleMRURelative()': ['C-<F2>'] }
let g:ctrlp_mruf_case_sensitive = 1           " Avoid duplicate MRU entries

"" dirs/filetypes should be ignore
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ }

"" remap commands
nnoremap <C-b> :CtrlPBuffer<cr>              " only to find the buffers
nnoremap <C-m> :CtrlPMRU<cr>                 " only to Most-Reccently-Used files


" ----------------------------
" tagbar settings
" ----------------------------
let g:tagbar_ctags_bin='d://ctags58//ctags.exe'
" let g:tagbar_left=1                           " fix to window left
let g:tagbar_width=26                         " 20 characters
" let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_show_linenumbers = 2     " show relative nu
let g:tagbar_expand = 1
let g:tagbar_compact=1 			" do not show the "help" msg
"
nnoremap <leader>tg :TagbarToggle<CR>
" " auto open and focus on tagbar when open the .py files;
" " and close with .py buffer gone.
" autocmd BufEnter *.py :call tagbar#autoopen(0)
" autocmd BufWinLeave *.py :TagbarClose

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
" let g:indent_guides_enable_on_vim_startup=0
" let g:indent_guides_start_level=2
" let g:indent_guides_guide_size=1
" " leader + i to turn on/off the indent_guide
" nmap <silent> <leader>ind <Plug>IndentGuidesToggle

" ----------------------------
" airline settings
" ----------------------------
let g:airline#extensions#default#layout = [
\ [ 'a', 'b', 'c' ],
\ [ 'x', 'y', 'z', 'error', 'warning' ]
\ ]

" let g:airline_theme='simple'
" git brachs etc
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file', 'conflicts' ]
let g:airline#extensions#ale#enabled=1
" fonts etc
let g:airline_symbols_ascii = 1
" let g:airline_powerline_fonts=1
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" airline sections display
" let g:airline_section_b = '%-0.10{getcwd()}'

" vim-Obsession
let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#obsession#indicator_text = '$'

" ----------------------------
" ale settings
" ----------------------------
let g:ale_enabled = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'

let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
let g:ale_echo_cursor = 1

let g:ale_open_list = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 0
" Show 10 lines of errors (default: 10)
let g:ale_list_window_size = 10

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

" ale for python
let g:ale_linters_explicit = 1
let g:ale_linters = {'python': ['flake8','pyflakes']}
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_auto_pipenv = 1

" ----------------------------
" snip settings
" ----------------------------
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSinpsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<leader><Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" ----------------------------
" autocmd groups
" ----------------------------
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,sh,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,sh,c,cpp match Excess /\%80v.*/
    autocmd FileType python,sh,c,cpp set nowrap
    autocmd FileType python,sh,c,cpp set colorcolumn=79
    " auto begin in newline when exceed 79 chars
    autocmd FileType * setlocal textwidth=79 formatoptions+=t
    autocmd FileType c,cpp setlocal comments-=:// comments+=f://
    autocmd BufNewFile,BufRead *.py
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set textwidth=79 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix |
    " automate generate tags file when save the files(when project is small)
    " autocmd BufWritePost *.cpp, *.py call system("ctags -R")

    " supress jedi docstring window to popup during completion
    autocmd FileType python setlocal completeopt-=preview
    " make changes of .vimrc working when save it
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
