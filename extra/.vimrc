" ----------------------------------------------------------------------
" | General Settings                                                   |
" ----------------------------------------------------------------------

set nocompatible               " Don't make vim vi-compatibile

syntax on                      " Enable syntax highlighting

set autoindent                 " Copy indent to the new line

set backspace=indent           " ┐
set backspace+=eol             " │ Allow `backspace`
set backspace+=start           " ┘ in insert mode

set backupdir=~/.vim/backups   " Set directory for backup files

set backupskip=/tmp/*          " ┐ Don't create backups
set backupskip+=/private/tmp/* " ┘ for certain files

set clipboard=unnamed          " ┐
                               " │ Use the system clipboard
if has('unnamedplus')          " │ as the default register
    set clipboard+=unnamedplus " │
endif                          " ┘

set cpoptions+=$               " When making a change, don't
                               " redisplay the line, and instead,
                               " put a `$` sign at the end of
                               " the changed text

set colorcolumn=73             " Highlight certain column(s)
set cursorline                 " Highlight the current line
set directory=~/.vim/swaps     " Set directory for swap files
set encoding=utf-8 nobomb      " Use UTF-8 without BOM
set fileencoding=utf-8
set fileencodings=utf-8
set history=5000               " Increase command line history
set hlsearch                   " Enable search highlighting
set ignorecase                 " Ignore case in search patterns

set incsearch                  " Highlight search pattern as
                               " it is being typed

set laststatus=2               " Always show the status line

set lazyredraw                 " Do not redraw the screen while
                               " executing macros, registers
                               " and other commands that have
                               " not been typed

set listchars=tab:▸\           " ┐
set listchars+=trail:·         " │ Use custom symbols to
set listchars+=eol:↴           " │ represent invisible characters
set listchars+=nbsp:_          " ┘

set magic                      " Enable extended regexp
set mousehide                  " Hide mouse pointer while typing
set noerrorbells               " Disable error bells

set nojoinspaces               " When using the join command,
                               " only insert a single space
                               " after a `.`, `?`, or `!`

set nostartofline              " Kept the cursor on the same column
set number                     " Show line number
set mouse=a
set hidden

set numberwidth=5              " Increase the minimal number of
                               " columns used for the `line number`

set report=0                   " Report the number of lines changed
set ruler                      " Show cursor position

set scrolloff=5                " When scrolling, keep the cursor
                               " 5 lines below the top and 5 lines
                               " above the bottom of the screen

set shortmess=aAItW            " Avoid all the hit-enter prompts
set showcmd                    " Show the command being typed
set showmode                   " Show current mode
set spelllang=en_us            " Set the spellchecking language

set smartcase                  " Override `ignorecase` option
                               " if the search pattern contains
                               " uppercase characters

set synmaxcol=2500             " Limit syntax highlighting (this
                               " avoids the very slow redrawing
                               " when files contain long lines)

set tabstop=2                  " ┐
set softtabstop=2              " │ Set global <TAB> settings
set shiftwidth=2               " │ http://vimcasts.org/e/2
set expandtab                  " ┘

set ttyfast                    " Enable fast terminal connection
set undodir=~/.vim/undos       " Set directory for undo files
set undofile                   " Automatically save undo history
"set virtualedit=all            " Allow cursor to be anywhere

set visualbell                 " ┐
set noerrorbells               " │ Disable beeping and window flashing
set t_vb=                      " ┘ https://vim.wikia.com/wiki/Disable_beeping

set wildmenu                   " Enable enhanced command-line
                               " completion (by hitting <TAB> in
                               " command mode, Vim will show the
                               " possible matches just above the
                               " command line with the first
                               " match highlighted)

set winminheight=0             " Allow windows to be squashed
set noshowmode

" ----------------------------------------------------------------------
" | Plugins                                                            |
" ----------------------------------------------------------------------
" https://github.com/junegunn/vim-plug

filetype off

call plug#begin('~/.vim/plugged')

    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'altercation/vim-colors-solarized'
    Plug 'ap/vim-css-color'
    Plug 'chrisbra/unicode.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'godlygeek/tabular'
    Plug 'kien/ctrlp.vim'
    Plug 'marijnh/tern_for_vim'
    Plug 'mattn/emmet-vim'
    Plug 'mattn/webapi-vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'othree/html5.vim'
    Plug 'plasticboy/vim-markdown'
    Plug 'raimondi/delimitmate'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'Shougo/neocomplcache'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'shutnik/jshint2.vim'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'wakatime/vim-wakatime'
    Plug 'wavded/vim-stylus'
    Plug 'digitaltoad/vim-jade'
    Plug 'pangloss/vim-javascript'
    Plug 'guns/vim-clojure-static'
    Plug 'mxw/vim-jsx'
    Plug 'itchyny/lightline.vim'
    Plug 'neovimhaskell/haskell-vim'

    Plug 'jparise/vim-graphql'
    Plug 'isRuslan/vim-es6'
    Plug 'leafgarland/typescript-vim'

    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-rake'
    Plug 'tpope/vim-projectionist'
    Plug 'thoughtbot/vim-rspec'
    Plug 'ecomba/vim-ruby-refactoring'

call plug#end()

filetype plugin indent on


" ----------------------------------------------------------------------
" | Plugins - Emmet                                                    |
" ----------------------------------------------------------------------

" Redefine trigger key for Emmet
" http://docs.emmet.io/cheat-sheet/

let g:user_emmet_leader_key='<C-Y>'

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Load custom Emmet snippets
" http://docs.emmet.io/customization/snippets/

let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippets/emmet.json')), "\n"))


" ----------------------------------------------------------------------
" | Plugins - Indent Guides                                            |
" ----------------------------------------------------------------------

" Set custom indent colors
" https://github.com/nathanaelkane/vim-indent-guides#setting-custom-indent-colors

let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd
        \ guibg=#00323D
        \ ctermbg=Magenta

autocmd VimEnter,Colorscheme * :hi IndentGuidesEven
        \ guibg=#073642
        \ ctermbg=DarkMagenta


" ----------------------------------------------------------------------
" | Plugins - Markdown                                                 |
" ----------------------------------------------------------------------

" Disable Folding
" https://github.com/plasticboy/vim-markdown#disable-folding

let g:vim_markdown_folding_disabled=1


" ----------------------------------------------------------------------
" | Plugins - NeoComplCache                                            |
" ----------------------------------------------------------------------

" Enable `neocomplcache` by default
" https://github.com/Shougo/neocomplcache.vim#installation

let g:neocomplcache_enable_at_startup=1
let g:neocomplete#enable_fuzzy_completion=1

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python =
    \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `<TAB>` autocomplete

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" ----------------------------------------------------------------------
" | Plugins - Syntastic                                                |
" ----------------------------------------------------------------------

" Inform Syntastic which checkers to use based on file types
" https://github.com/scrooloose/syntastic#3-faq

let g:syntastic_html_checkers = [ 'jshint' ]
let g:syntastic_javascript_checkers = [ 'jshint' ]

" Disable syntax checking by default
let g:syntastic_mode_map = {
    \ 'active_filetypes': [],
    \ 'mode': 'passive',
    \ 'passive_filetypes': []
\}


" ----------------------------------------------------------------------
" | Helper Functions                                                   |
" ----------------------------------------------------------------------

function! GetGitBranchName()

    let branchName = ''

    if exists('g:loaded_fugitive')
        let branchName = '[' . fugitive#head() . ']'
    endif

    return branchName

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! StripTrailingWhitespaces()

    " Save last search and cursor position
    let searchHistory = @/
    let cursorLine = line('.')
    let cursorColumn = col('.')

    " Strip trailing whitespaces
    %s/\s\+$//e

    " Restore previous search history and cursor position
    let @/ = searchHistory
    call cursor(cursorLine, cursorColumn)

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! ToggleLimits()

    " [51,73]
    "   - git commit message
    "     http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
    " [81]
    "   - general use

    if ( &colorcolumn == '73' )
        set colorcolumn+=51,81
    else
        set colorcolumn-=51,81
    endif

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! ToggleRelativeLineNumbers()

    if ( &relativenumber == 1 )
        set number
    else
        set relativenumber
    endif

endfuncti

" ----------------------------------------------------------------------
" | Automatic Commands                                                 |
" ----------------------------------------------------------------------

if has('autocmd')

    " Autocommand Groups
    " http://learnvimscriptthehardway.stevelosh.com/chapters/14.html

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Automatically reload the configurations from the
    " `~/.vimrc` and `~/.gvimrc` files whenever they are changed

    augroup auto_reload_vim_configs

        autocmd!
        autocmd BufWritePost vimrc source $MYVIMRC

        if has('gui_running')
            autocmd BufWritePost gvimrc source $MYGVIMRC
        endif

    augroup END

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Automatically strip the trailing whitespaces when files are saved

    augroup strip_trailing_whitespaces

        " List of file types that use the trailing whitespaces:
        "
        "  * Markdown
        "    https://daringfireball.net/projects/markdown/syntax#block

        let excludedFileTypes = [ 'mkd.markdown' ]

        " Only strip the trailing whitespaces if the file type is
        " not in the excluded file types list

        autocmd!
        autocmd BufWritePre * if index(excludedFileTypes, &ft) < 0 | :call StripTrailingWhitespaces()

    augroup END

endif

" ----------------------------------------------------------------------
" | Color Scheme                                                       |
" ----------------------------------------------------------------------

set t_Co=256                   " Enable full-color support

"set background=dark            " Use colors that look good
                               " on a dark background

" Set custom configurations for when the
" Solarized theme is used from vim's Terminal mode
" http://ethanschoonover.com/solarized/vim-colors-solarized#advanced-configuration

" if !has('gui_running')
"     let g:solarized_contrast = 'high'
"     let g:solarized_termcolors = 256
"     let g:solarized_termtrans = 1
"     let g:solarized_visibility = 'high'
" endif

" colorscheme solarized          " Use custom color scheme
"DRACULA
let g:dracula_italic = 0
colorscheme dracula
" ----------------------------------------------------------------------
" | Key Mappings                                                       |
" ----------------------------------------------------------------------

" Use a different mapleader (default is '\')
let mapleader="\<space>"

nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,* ] Search and replace the word under the cursor
nmap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cc] Toggle code comments
" https://github.com/tomtom/tcomment_vim
map <leader>cc :TComment<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cr] Calculate result
" http://vimcasts.org/e/56
nmap <leader>cr 0yt=A<C-r>=<C-r>"<CR><Esc>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,cs] Clear search
map <leader>cs <Esc>:noh<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,h ] JSHint the code
" https://github.com/Shutnik/jshint2.vim
nmap <leader>h :JSHint<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,l ] Toggle `set list`
nmap <leader>l :set list!<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,n ] Toggle `set relativenumber`
nmap <leader>n :call ToggleRelativeLineNumbers()<CR>
nmap <leader>nn :set nornu <CR>
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ss] Strip trailing whitespace
nmap <leader>ss :call StripTrailingWhitespaces()<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,t ] Toggle NERDTree
nnoremap <silent><F4> :NERDTreeToggle<CR>

nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ti] Toggle indent
nmap <leader>ti <Plug>IndentGuidesToggle

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,tl] Toggle show limits
nmap <leader>tl :call ToggleLimits()<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,ts] Toggle Syntastic
nmap <leader>ts :SyntasticToggleMode<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,v ] Make the opening of the `.vimrc` file easier
nmap <leader>v :vsp $MYVIMRC<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" [,W ] Sudo write
map <leader>W :w !sudo tee %<CR>


" ----------------------------------------------------------------------
" | Status Line                                                        |
" ----------------------------------------------------------------------

" Terminal types:
"
"   1) term  (normal terminals, e.g.: vt100, xterm)
"   2) cterm (color terminals, e.g.: MS-DOS console, color-xterm)
"   3) gui   (GUIs)

highlight ColorColumn
    \ term=NONE
    \ cterm=NONE  ctermbg=237    ctermfg=NONE
    \ gui=NONE    guibg=#073642  guifg=NONE

highlight CursorLine
    \ term=NONE
    \ cterm=NONE  ctermbg=235  ctermfg=NONE
    \ gui=NONE    guibg=#073642  guifg=NONE

highlight CursorLineNr
    \ term=bold
    \ cterm=bold  ctermbg=NONE   ctermfg=178
    \ gui=bold    guibg=#073642  guifg=Orange

highlight LineNr
    \ term=NONE
    \ cterm=NONE  ctermfg=241    ctermbg=NONE
    \ gui=NONE    guifg=#839497  guibg=#073642

highlight User1
    \ term=NONE
    \ cterm=NONE  ctermbg=237    ctermfg=Grey
    \ gui=NONE    guibg=#073642  guifg=#839496

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set statusline=
set statusline+=%1*            " User1 highlight
set statusline+=\ [%n]         " Buffer number
set statusline+=\ %{GetGitBranchName()} " Git branch name
set statusline+=\ [%f]         " Path to the file
set statusline+=%m             " Modified flag
set statusline+=%r             " Readonly flag
set statusline+=%h             " Help file flag
set statusline+=%w             " Preview window flag
set statusline+=%y             " File type
set statusline+=[
set statusline+=%{&ff}         " File format
set statusline+=:
set statusline+=%{strlen(&fenc)?&fenc:'none'} " File encoding
set statusline+=]
set statusline+=%=             " Left/Right separator
set statusline+=%c             " File encoding
set statusline+=,utf
set statusline+=%l             " Current line numberutf
set statusline+=/utf
set statusline+=%L             " Total number of lineutfs
set statusline+=\ (%P)\        " Percent through fileutf

" Example result:utf
"utf
"  [1] [master] [vim/vimrc][vim][unix:utf-8]         utf   17,238/381 (59%)

" ----------------------------------------------------------------------
" | Personal Settings                                                  |
" ----------------------------------------------------------------------
com! Formatjson %!python -m json.tool
com! Formatxml !xmllint --format -

set list
set nowrap
set backupcopy=yes

" EJS
au BufNewFile,BufRead *.{ejs,mjml} set filetype=html


" ----------------------------------------------------------------------
" | Local Settings                                                     |
" ----------------------------------------------------------------------

" Load local settings if they exist
"
" Note: The following needs to be included last in order to allow
"       any of the above settings to be overwritten by local ones

if filereadable(glob('~/.vimrc.local'))
    source ~/.vimrc.local
endif

" Haskell configuration
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_classic_highlighting = 1

let g:jsx_ext_required = 0

" Open file using `gf` in a vertical tab
nnoremap gf :vertical wincmd f<CR>

"*****************************************************************************
"Custom configs                                                              *
"*****************************************************************************

" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" For ruby refactory
if has('nvim')
  runtime! macros/matchit.vim
else
  packadd! matchit
endif

" Ruby refactory
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>

let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
