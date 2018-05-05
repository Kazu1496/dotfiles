" ########################
" SETUP dein.vim
" ########################
let s:dein_dir = $HOME . '/.vim/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(expand('~/.vim/dein'))

  let s:toml      = '~/.dein.toml'
  let s:lazy_toml = '~/.dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" ########################
" NERDTree
" ########################
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" ########################
" gitgutter
" ########################
let g:gitgutter_highlight_lines = 1
set updatetime=10

" ########################
" deoplate
" ########################
let g:deoplete#enable_at_startup = 1

" ########################
" ColorScheme
" ########################
set background=dark
colorscheme PaperColor
let g:airline_theme = 'papercolor'

" ########################
" vim-cheatsheet 
" ########################
let g:cheatsheet#cheat_file = '~/.cheetsheet.md'

" ########################
" markdown 
" ########################
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
nnoremap <silent> <C-p> :PrevimOpen<CR>
let g:vim_markdown_folding_disabled=1

" ########################
" quickrun 
" ########################
let g:quickrun_config={'*': {'split': ''}}

" ########################
" Customize 
" ########################
filetype plugin indent on
syntax enable
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set number
set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4
set incsearch
set ignorecase
set smartcase
set hlsearch
set list listchars=tab:\▸\-
set whichwrap=b,s,h,l,<,>,[,],~
set cursorline
set showtabline=3
