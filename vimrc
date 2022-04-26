"================================================================================
" Vundle stuff begin
"================================================================================
set nocompatible              " not compatible with vi, required.
filetype off                  " required.

" Alternatively pass a path where Vundle should install plugins.
" call vundle#begin('~/some/path/here')
" set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
  Plugin 'tpope/vim-sensible'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'christoomey/vim-sort-motion'
  Plugin 'michaeljsmith/vim-indent-object'
  Plugin 'kana/vim-textobj-user'
  Plugin 'kana/vim-textobj-line'
  Plugin 'kien/ctrlp.vim'
  Plugin 'vim-scripts/a.vim'
  Plugin 'preservim/tagbar'
  Plugin 'vim-airline/vim-airline'

" Plugin from http://vim-scripts.org/vim/scripts.html
"       Plugin 'L9'
" Git plugin not hosted on GitHub
"      Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"      Plugin 'file:///home/gmarik/path/to/plugin'
" All of your Plugins must be added before the following line.
call vundle#end()            " required.
filetype plugin indent on    " required.
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
"       :PluginList       - lists configured plugins
"       :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"       :PluginSearch foo - searches for foo; append `!` to refresh local cache
"       :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ.
" Put your non-Plugin stuff after this line.
"================================================================================
"  Vundle stuff end
"================================================================================

" Split edit your vimrc. Type \, v, r in sequence to trigger.
nmap <leader>vr :vsp $MYVIMRC<cr>
" Source (reload) your vimrc. Type \, s, o in sequence to trigger.
nmap <leader>so :source $MYVIMRC<cr>
" Generate tagsbar for the current file. Type \, b in sequence to trigger.
nmap <leader>b :TagbarToggle<cr>
" Toggle relative number by \, r and \, R.
nmap <leader>r :set relativenumber<cr>
nmap <leader>R :set norelativenumber<cr>

syntax on
set number " Show line numbers.
set cursorline " Highlight cursor line underneath the cursor horizontally.
set expandtab " Expands tabs to spaces.
set tabstop=2 " Set tab width to two columns.
set shiftwidth=2 " Set shift width to 2 spaces.
set softtabstop=2
set ruler " Shows column and line number at the end.
set smartindent
set showmode" Shows the vim mode, Normal, Insert and Visual.
set showcmd
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.
"autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing white spaces in the following file.

"Ctrl s to save and close.
" map-cmd   lhs   rhs. nmap is normal mode map. imap is insert mode map. vmap is visual mode map.
nmap 0 ^" remap 0 to begining of line.
nmap <C-s> :w<cr>" remap Ctrl s to save the file.
nmap j gj " Move up and down by visible lines if current line is wrapped".
nmap k gk
imap jj <esc>" remap jj to Esc.

" Command aliases for typoed commands (accidentally holding shift too long).
command! Q q " Bind :Q to :q.
command! Qall qall " Bind :Qall to :qall.
command! QA qall   " Bind :QA to :qall.
command! E e

setglobal commentstring=#\ %s "To set a commentstring globally for all undetected filetypes to #.
autocmd FileType cpp setlocal commentstring=//\ %s " To set commentstring for cpp files to //.
autocmd FileType c setlocal commentstring=//\ %s " To set commentstring for c files to //.
set belloff=all
