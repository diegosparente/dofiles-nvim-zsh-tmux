"#######################################
"#              Plug core              #
"#######################################

call plug#begin()
  "Plug 'dracula/vim', { 'as': 'dracula' }
  "Plug 'morhetz/gruvbox'
  "Plug 'joshdick/onedark.vim'
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
  Plug 'ap/vim-css-color'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'arcticicestudio/nord-vim'

  " Caracteres especiais para indentação
  Plug 'Yggdroot/indentLine'

  " Adicionar comentários em várias linguagens
  Plug 'tpope/vim-commentary'

  " Carregar CSV
  Plug 'chrisbra/csv.vim'

  " Conquer of Completation - autocomplete - intelisense engine
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  " GraphQL
  Plug 'jparise/vim-graphql'

  " elixir
  Plug 'elixir-lang/vim-elixir'
  Plug 'carlosgaldino/elixir-snippets'

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
  " Suporte à liguagem JavaScript
  Plug 'pangloss/vim-javascript'

  " Suporte para ReScript
  Plug 'rescript-lang/vim-rescript'

  " ruby
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'vim-ruby/vim-ruby'
  Plug 'ngmy/vim-rubocop'
  Plug 'janko-m/vim-test'
  Plug 'tpope/vim-projectionist'
  Plug 'thoughtbot/vim-rspec'
  Plug 'ecomba/vim-ruby-refactoring'
call plug#end()

"#######################################
"#              encoding               #
"#######################################

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"#######################################
"#                color                #
"#######################################

set termguicolors
"DRACULA
"colorscheme dracula
"let g:dracula_italic = 0

"GRUVBOX
"colorscheme gruvbox
"set background=dark

"ONEDARK
"colorscheme onedark

"" Configuration
"let g:gruvbox_contrast_dark='soft'
"
"NORD
colorscheme nord


"#######################################
"#                basic                #
"#######################################
set list
"set listchars=tab:▸\           " ┐
"set listchars+=trail:·         " │ Use custom symbols to
"set listchars+=eol:↴           " │ represent invisible characters
"set listchars+=nbsp:_          " ┘
set noshowmode
set inccommand=split
set hidden
set number
set relativenumber
set mouse=a
syntax on
set cursorline
set cursorcolumn
"set showtabline=2
set colorcolumn=120
set clipboard=unnamedplus
"set clipboard+=unnamedplus

"#######################################
"#               Highlight             #
"#######################################

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
highlight CursorColumn guibg=#4d4e50 ctermbg=none

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

"#######################################
"#               Mappings              #
"#######################################

"let mapleader="\<space>"
let mapleader=","
let maplocalleader=";"

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <silent> <F2> :Files<cr>
nnoremap <silent> <F3> :NERDTreeToggle<cr>

let g:ale_use_deprecated_neovim = 1

"#######################################
"#            Linter config            #
"#######################################

"let g:ale_linters = {
"\   'javascript': ['standard'],
"\}

" Standard config
"autocmd bufwritepost *.js silent !standard --fix %
set autoread

"#######################################
"#     statusline themes config        #
"#######################################

" ==> LightLine config

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"####################################
" Configuração do plugin IndentLine #
"####################################

" Exemplos de linhas verticais: | ¦ ┆ ┊ ▏
let g:indentLine_enabled = 1
let g:indentLine_char = '¦'
let g:indentLine_first_char = '¦'
let g:indentLine_showFirstIndentLevel = 1

"############################################################
"#Configuração do plugin polyglot para JSX (vim-jsx-pretty)##
"############################################################

let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 0


