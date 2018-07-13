"#######################################
"#		Plug core	       #
"#######################################
call plug#begin()
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'morhetz/gruvbox'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'w0rp/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mattn/emmet-vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'scrooloose/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-gitbranch'
  Plug 'tpope/vim-fugitive'
  Plug 'Shougo/neocomplcache'
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  
  " GraphQL
  Plug 'jparise/vim-graphql'

  " elixir
  Plug 'elixir-lang/vim-elixir'
  Plug 'carlosgaldino/elixir-snippets'

  " html
  "" HTML Bundle
  Plug 'hail2u/vim-css3-syntax'
  Plug 'gorodinskiy/vim-coloresque'
  Plug 'tpope/vim-haml'

  " javascript
  "" Javascript Bundle
  Plug 'jelera/vim-javascript-syntax'
  "" ES6
  Plug 'isRuslan/vim-es6'
  "" JSX
  Plug 'mxw/vim-jsx'

  " ruby
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'tpope/vim-projectionist'
  Plug 'thoughtbot/vim-rspec'
  Plug 'ecomba/vim-ruby-refactoring'
call plug#end()

"#######################################
"#		encoding	       #
"#######################################

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

"#######################################
"#		  color		       #
"#######################################

colorscheme gruvbox
set background=dark

"" Configuration 
let g:gruvbox_contrast_dark = 'hard'

"#######################################
"#		  basic		       #
"#######################################

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
syntax on

"#######################################
"#         Terminal color system       #
"#######################################
" This excerpt is a copy of the vim-bootstrap

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1  
  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
  
endif

if &term =~ '256color'
  set t_ut=
endif

"#######################################
"#          Plug's by Shougo	       #
"#######################################

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"#######################################
"#               Mappings	       #
"#######################################

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <silent> <F2> :Files<cr>
nnoremap <silent> <F3> :NERDTreeFind<cr>
nnoremap <silent> <F4> :NERDTreeToggle<cr>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<cr>

let g:ale_use_deprecated_neovim = 1

let NERDTreeShowHidden = 1

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

"#######################################
"#            Linter config	       #
"#######################################

let g:ale_linters = {
\   'javascript': ['standard'],
\}

" Standard config
autocmd bufwritepost *.js silent !standard --fix %
set autoread

"#######################################
"#     statusline themes config	       #
"#######################################

" ==> LightLine config

 set noshowmode

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

