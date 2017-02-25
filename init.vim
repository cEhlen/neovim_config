set encoding=utf-8
scriptencoding utf-8
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/cehlen/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/cehlen/.config/nvim/plugins')
  call dein#begin('/Users/cehlen/.config/nvim/plugins')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/cehlen/.config/nvim/plugins/repos/github.com/Shougo/dein.vim')

  " UI Stuff
  call dein#add('itchyny/lightline.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimfiler.vim')

  " Colorschemes
  call dein#add('colepeters/spacemacs-theme.vim')

  " Code Plugins
  call dein#add('Shougo/deoplete.nvim')

  " Python
  call dein#add('zchee/deoplete-jedi')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" Basic UI stuff
if (has("termguicolors"))
  set termguicolors
endif
let g:lightline = {
\ 'colorscheme': 'wombat',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\ }
let g:vimfiler_as_default_explorer = 1
set noshowmode
set cursorline
set background=dark
colorscheme spacemacs-theme
set relativenumber

" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500

" Keybindings
:let mapleader = ","
noremap <Leader>n :VimFilerExplorer -winwidth=25 <Esc>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Python Stuff!
let g:python_host_prog = '/Users/cehlen/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/cehlen/.pyenv/versions/neovim/bin/python'

" Tab Stuff
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
