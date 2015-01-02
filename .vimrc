set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"My Bundle
Bundle 'https://github.com/Lokaltog/vim-powerline.git' 
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'https://github.com/honza/vim-snippets'
Bundle 'scrooloose/nerdtree'
Bundle 'molokai'
"End My Bundle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number
set history=1000
syntax on
set t_Co=256
set autoindent
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ruler
set incsearch
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set modeline
"set background=dark
"molokai
if has("gui_running")
    let g:isGUI = 1
	colorscheme molokai
	let g:rehash256 = 1
	let g:molokai_original = 1
else
	let g:isGUI = 0
	set background =dark
endif
"set background=dark
"HighLight
set cursorline
hi CursorLine cterm=NONE ctermbg=black guibg=black guifg=NONE
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=blue guibg=darkred guifg=white
"hi Cursor guibg=#dddddd guifg=Black
"hi lCursor guibg=Cyan guifg=Black
"开启高亮光标列
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
if has("vms")
	set nobackup
else
	set backup
endif

"vim-powerline
set laststatus=2
let g:Powerline_symbols='unicode'
set encoding=utf8

"Ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-s-z>"
let g:UltiSnipsEditSplit="vertical"
"Block some files type to improve performance
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}
"YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F12> :YcmDiags<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_filepath_completion_use_working_dir = 1
let g:syntasic_always_populate_loc_list = 1
"NERDTREE
map <F6> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let g:NERDChristmasTree = 1
let g:NERDTreeWinSize = 20
