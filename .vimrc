
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set showmatch " 일치하는 괄호 하이라이팅
"set smartcase " 검색시 대소문자 구별
set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set autoindent " 자동 들여쓰기
set smartindent
set expandtab
set cindent " C언어 자동 들여쓰기
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 구문 강조 사용
if has("syntax")
syntax on
endif
" 컬러 스킴 사용
colorscheme delek

set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

au BufRead,BufNewFile *.k set filetype=kframework
au! Syntax kframework source kframework.vim
syn on

" disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


source ~/.vim/plugins/cscope_maps.vim


"""""""""""""""""""""""""""""""""
""" Markdown syntax highligher
"""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'



"""""""""""""""""""""""""""""""""
""" Markdown previewer
"""""""""""""""""""""""""""""""""
Plugin 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

"""""""""""""""""""""""""""""""""
""" C++ syntax highligher
""" https://github.com/octol/vim-cpp-enhanced-highlight
"""""""""""""""""""""""""""""""""
Plugin 'octol/vim-cpp-enhanced-highlight'


Plugin 'taglist.vim'
