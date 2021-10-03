" for vundle -- vim plugin manager
set nocompatible
filetype off
" be iMproved, required
" required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
call vundle#end()
" required
filetype plugin indent on
" required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Jan 26
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" use vim settings rather than Vi's
set nocompatible

" show cursor line
set cursorline
" show line numbers
set number

" set color scheme
colorscheme pablo

" spell checking for English
" set spell

" show incomplete commands at the bottom
set showcmd
" show current mode
set showmode

" always display the status bar
set laststatus=2
" always show cursor position
set ruler
" set window's title, reflecting the file currently being edited 
set title
" smart auto indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

set smarttab

" don't wrap lines
set nowrap

" use encoding that supports Unicode
set encoding=utf-8
" Wrap lines at convenient points, avoid wrapping a line in the middle of a word.
set linebreak

" enable syntax highlighting
set t_Co=256
syntax enable

" Display a confirmation dialog when closing an unsaved file
set confirm
" status line settings
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" store swap files here
set directory=$HOME/.vim/swp//

" enable project specific vimrc
set exrc

" Display command line's tab complete options as a menu.
set wildmenu

" Indent by 4 spaces when hitting tab
set softtabstop=4

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" set backup dir
set backupdir=~/.vim/.backup//

" Maintain undo history between sessions
set undofile
" set undo dir
set undodir=~/.vim/.undodir//
" side menu
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

" Change directory to the current buffer when opening files.
set autochdir
map <C-E> :Ex<CR>

