" ===================================
" fanmh's vimrc (Windows Evns)
" builted: 2018-07-16
" ===================================
" TODO:
"     clean up.
"     Vundle alternative.

set nocompatible                                " be iMproved

" ALWAYS PUT PLUGINS FIRST PLACE
" TO ADVOID SOME SILLY MISTAKES.
" #############################
"  Part-I:  Plugins
" #############################
" -----------------------------
" Vundle for plugins management
" -----------------------------
filetype off                                    " required

set rtp+=$HOME/.vim/bundle/Vundle.vim/          " set the runtime path to include Vundle and initialize
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
    " Plugin 'scrooloose/nerdtree'                " Project and file navigation

    "-------------------=== Other ===-------------------------------
    Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'flazz/vim-colorschemes'             " Colorschemes
    Plugin 'altercation/vim-colors-solarized'   " solarized
    Plugin 'jnurmine/Zenburn'

    "-------------------=== Snippets support ===--------------------
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'tpope/vim-commentary'                 " Comment stuff out
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'                   " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'tpope/vim-repeat'                     " repeat the operatoins
    Plugin 'tpope/vim-abolish'                    " the Supercharge version of vim's %s
    Plugin 'tpope/vim-obsession'                  " mksession enhencement
    Plugin 'airblade/vim-gitgutter'             " shows a git diff in the sign column (i.e., gutter)
    Plugin 'scrooloose/nerdcommenter' 		  " comment things out
    Plugin 'hdima/Python-Syntax' 		  " syntax highlight for python
    Plugin 'python-mode/python-mode'
    " Plugin 'davidhalter/jedi-vim'
    Plugin 'rust-lang/rust.vim'
    Plugin 'racer-rust/vim-racer'
    Plugin 'dense-analysis/ale'
    Plugin 'fatih/vim-go'
    " Plugin 'supertab'
    Plugin 'Valloric/YouCompleteMe'

    "-------------------=== Code checking= ==-----------------------------
    " Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim

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
" nnoremap <C-[> <Esc>

" back to normal mode
inoremap jk <Esc>

" -------------------------------
" WOW, it's almost like in a Tmux
" -------------------------------
" back to normal mode in a term
tnoremap <Esc> <C-w>N
" <space>bash --> open term in vertical split
nnoremap <space>b :vert ter bash<cr>


" source vimrc
" nnoremap <leader><leader>s :source ~/_vimrc<cr> :echo "*** vimrc reloaded ***"<cr>
" shotcut for edit ~/_vimrc
" $MYVIMRC == ~/_vimrc<cr>, True.
nnoremap <leader>v :tabnew <bar> :e $MYVIMRC<cr>
nnoremap <space>v :sp $MYVIMRC<cr>
" vertical split help
nnoremap <space>h :vert help
" quick save/exit etc
nnoremap <leader>w :w<cr>
nnoremap <space>w :Gwrite<cr>
nnoremap <space>c :Gcommit<cr>
nnoremap <leader>q :q<cr>
" close location/quickfix window
nnoremap <space>q :lclose<cr>
nnoremap <space><space>q :cclose<cr>

" yanking/pasting with system clipboard
" pasting from sys clipboard to vim
nmap <space>p "+gp
" yank to sys clipboard only in Visual Mode
vnoremap <space>y "+y
" yank to register

" Ctrl + j,k,l,h to move around the panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" shotcuts to new tabs and moving around
nnoremap <space>] :tabn<cr>
nnoremap <space>[ :tabp<cr>
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
nnoremap <space>n :nohlsearch<cr>

" trim all the ending whitespace
" nnoremap <leader><leader>t :%s/\s\+$//g<cr>
" trim all the ending whitespace with confirmation
nnoremap <leader><leader>t :%s/\s\+$//

" toggle tagbar
nnoremap <space><space>b :TagbarToggle<CR>
nnoremap <space>j :TagbarOpen fj<CR>

" generate tag file, so we can Ctrl-] to goto definitions
nnoremap <f9> :!ctags -R<cr>

" windows/panes resize
nnoremap <silent> <Space>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Space>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
" nmap <Space>k :vertical resize +3<cr>
" nmap <Space>l :resize +5<cr>

" Explore the file in current path
" nnoremap EX :Explore<cr>


" python pdb in ipython --> Utilsnip takes care of this
" iab idb __import__('pdb').set_trace()

" abbrev  %T == %H:%M:%S
iab dts <c-r>=strftime("%A %m-%d %T %Y")<cr>

" only for C++ Learning 周三 10-30 11:01:36 2019
" iab stdlib #include "../std_lib_facilities.h"<cr>

" python shebang
iab #! #!/usr/bin/env python<cr># encoding: utf-8<cr>
" iab ifmain if __name__ == "__main__":

" #############################
"  Part-III:  Set vim
" #############################
" set pythonthreedll="d://PyVirtualenv//py37//python37.dll"
" set pythonthreehome="d:/PyVirtualenv/py37"
" py3 support, this setup is a must
set pythonthreedll=python37.dll

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

" terminial needed
set modifiable

" #############################
"  Part-IV: colorcolumn groups
" #############################
" gui appearance && colorschemes
" Note: syntax enable is needed
syntax on
syntax enable
set background=dark
colorscheme zenburn                       " backup colorscheme
if has('gui_running')
    " GUI setting
    set guifont=Lucida_Console:h9
    " au GUIEnter * simalt ~x                   " full screen when initiate gvim
    " gui no toolbar
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    " colorscheme solarized8_dark
    " colorscheme solarized8_dark_high
    " colorscheme solarized8_dark_flat
endif

" gvim & gitgutter error headling
if has("gui_running")
    " set shell=/usr/bin/bash
    " set shell=cmd solved the E484 problem but gitgutter faided
    set shell=cmd
    set shellcmdflag=/c
    set shellxquote=(
endif

" #############################
" Part-V: plugin setting groups
" #############################
" ----------------------------
" ycm-core
" ----------------------------
" 补全功能在注释中有效
let g:ycm_complete_in_comments = 1
" 在注释和字符串中获取标识符
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" show the full function prototype and overload
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_indentifiers_with_syntax=1
" 从下往上选择补全选项
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
" 显示详细诊断信息
let g:ycm_key_detailed_diagnostics = '<space>k'
" This command tries to perform the "most sensible" GoTo operation it can.
nnoremap <leader>g :YcmCompleter GoTo<CR>
" Looks up the symbol under the cursor and jumps to its declaration.
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
" Looks up the symbol under the cursor and jumps to its definition.
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
" Displays the preview window populated with quick info about the identifier under the cursor.
nnoremap <leader>k :YcmCompleter GetDoc<CR>
" Echos the type of the variable or method under the cursor, and where it differs, the derived type.
nnoremap <leader>kt :YcmCompleter GetType<CR>

" ----------------------------
" pymode
" ----------------------------
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_docstrings = g:pymode_syntax_all
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
let g:pymode_syntax_builtin_types = g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

let g:pymode_run = 1
let g:pymode_python = 'python3'
let g:pymode_run_bind = '<Space>r'
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 10
"
let g:pymode_lint = 0
" let g:pymode_lint_on_write = 1
" let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_rope = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_regenerate_on_write = 0
" " let g:pymode_rope_completion_bind = '<C>n'
" let g:pymode_rope_goto_definition_cmd = 'vnew'
" let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_rope_rename_bind = '<leader>r'
let g:pymode_rope_rename_module_bind = '<leader>m'

" ----------------------------
" vim-go
" ----------------------------
" let g:go_bin_path="c:/Go/bin"
let g:go_list_type = "locationlist"
let g:go_list_type_commands = {"GoBuild": "quickfix"}
let g:go_list_autoclose = 1
" using terminal feature
let g:go_term_enabled = 1
" let g:go_term_mode = "vsplit"
let g:go_term_mode = "split"
let g:go_term_height = 20
let g:go_fmt_autosave = 1
let g:go_gopls_enabled = 1
let g:go_def_reuse_buffer = 1
let g:go_rename_command = 'gopls'
let g:go_fmt_command = "goimports"
" let g:go_fmt_fail_silently = 1
" let g:go_addtags_transform = "camelcase"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1

let g:go_auto_type_info = 1


" racer
" ----------------------------
set hidden
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" ----------------------------
" rust-vim
" ----------------------------
" let g:rustfmt_autosave = 1
let g:rust_cargo_check_all_targets = 1
let g:ale_rust_cargo_use_check = 1
" ----------------------------
" easytags
" ----------------------------
" let g:easytags_cmd = "d:/ctags58/ctags.exe"
" let g:easytags_python_enabled = 1

" ----------------------------
" gitgutter
" ----------------------------
let g:gitgutter_git_executable = 'd:/Git/bin/git.exe'
" let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_max_signs = 100  " default value
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
" Use the GitGutterFold command to fold all unchanged lines, leaving just the
" hunks visible. Use zr to unfold 3 lines of context above and below a hunk.
" Execute GitGutterFold a second time to restore the previous view.
" set foldtext=gitgutter#fold#foldtext()

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
let g:jedi#show_call_signatures = "0"
let g:jedi#usages_command = "<leader>m"
let g:jedi#rename_command = "<leader>r"
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
" VIM-splits
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_select_first = 1



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
let g:tagbar_autofocus=1

" let g:tagbar_left=1                           " fix to window left
let g:tagbar_width=26                         " 20 characters
let g:tagbar_sort=0
let g:tagbar_show_linenumbers = 2     " show relative nu
let g:tagbar_expand = 1
let g:tagbar_compact=1 			" do not show the "help" msg
"
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
let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 40,
      \ 'x': 60,
      \ 'y': 40,
      \ 'z': 15,
      \ 'warning': 79,
      \ 'error': 79,
      \ }

let g:airline#extensions#default#layout = [
\ [ 'a', 'b', 'c' ],
\ [ 'x', 'y', 'z', 'error', 'warning' ]
\ ]
let g:airline_skip_empty_sections = 1

" let g:airline_theme='simple'
" git brachs etc
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#displayed_head_limit = 10
" let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
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
let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])
" vim-gitgutter
" enable/disable showing a summary of changed hunks under source control. >
let g:airline#extensions#hunks#enabled = 1
" " enable/disable showing only non-zero hunks. >
let g:airline#extensions#hunks#non_zero_only = 1
" " set hunk count symbols. >
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" ----------------------------
" ale settings
" ----------------------------
" let g:ale_enabled = 1
" let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" " You can disable this option too
" " if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
let g:ale_echo_cursor = 1
let g:ale_open_list = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
" " This can be useful if you are combining ALE with
" " some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 0
" " Show 10 lines of errors (default: 10)
" let g:ale_list_window_size = 10
"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"
" " nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

" " ale for python/rust
let g:ale_python_flake8_auto_pipenv = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {
		    \   'python': ['flake8'],
		    \   'rust': ['cargo'],
		    \	'go': ['gobuild', 'gofmt']
		    \}
let g:ale_fix_on_save = 0
let g:ale_fixers = {
\   'python': ['yapf'],
\}
nmap <F8> <Plug>(ale_fix)

" ----------------------------
" Utsnip settings
" ----------------------------
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSinpsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<leader><Tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" ----------------------------
" autocmd groups
" ----------------------------
augroup filefmt_autocmds
    " autocmd!: Remove all autocommands for the current group to avoid repeation
    autocmd!
    autocmd FileType python,sh,c,cpp,rust,rs,go,golang,md,markdown highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,sh,c,cpp,rust,rs,go,golang,md,markdown match Excess /\%80v.*/
    autocmd FileType python,sh,c,cpp,rust,rs,go,golang,md,markdown set nowrap
    autocmd FileType python,sh,c,cpp,rust,rs,go,golang,md,markdown set colorcolumn=79
    " auto begin in newline when exceed 79 chars
    autocmd FileType * setlocal textwidth=79 formatoptions+=t
    autocmd FileType c,cpp,rust,rs,go,golang setlocal comments-=:// comments+=f://
    autocmd BufNewFile,BufRead *.py,*.cpp,*.c,*.rs,*.go,*.md
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

augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> <leader>g  <Plug>(rust-def)
    " autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    " autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    " autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>k  <Plug>(rust-doc)
augroup END

augroup golang
    au!
    au FileType go nmap <space>r <Plug>(go-run)
    au FileType go nmap <space>t <Plug>(go-test)
    au FileType go nmap <space>b  <Plug>(go-build)
    au FileType go nmap <Leader>i <Plug>(go-info)
    au FileType go nmap <leader>g <Plug>(go-def-vertical)
    au FileType go nmap <leader>r <Plug>(go-rename)
    au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
    au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
    au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

augroup END
