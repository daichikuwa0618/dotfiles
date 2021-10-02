" ====================
" === vim-plug ===
" ====================
call plug#begin('~/nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'arzg/vim-colors-xcode'
  " Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'bryanmylee/vim-colorscheme-icons'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'patstockwell/vim-monokai-tasty'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vimwiki/vimwiki'
  Plug 'tpope/vim-commentary'
call plug#end()

" NERDTree SETTINGS
" see: https://github.com/preservim/nerdtree#frequently-asked-questions
nmap <C-e> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
" Vim の開始時に NERDTree を開き、カーソルは別の Window に戻す
autocmd VimEnter * NERDTree | wincmd p
" NERDTree がタブ上の唯一の Window であれば、 Vim を終了する
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Airline setting
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
let g:airline_theme='deus'

" vimwiki setting
let g:vimwiki_list = [{'path': '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/obsidian-vault/Note', 'syntax': 'markdown', 'ext': '.md'}]

"====================
"===  general settings ===
" ====================
" Learder を <Space> にする
let mapleader = "\<Space>"
" no swap file
set noswapfile
" show inputting command to status
set showcmd
" クリップボードの共有
set clipboard+=unnamed
" マウスを使う設定
set mouse=a
" enable to open other files even when editting buffer
set hidden
" バックスペースの削除の設定
set backspace=indent,eol,start
" スペルチェックを有効化
set spelllang+=cjk " スペルチェックから日本語を除外する
set spell
" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" ====================
" === moving settings ===
" ====================
" Insert モードで Emacs のキーバインドを使えるようにする
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <C-o>:call <SID>home()<CR>
inoremap <C-e> <End>
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-k> <C-r>=<SID>kill()<CR>
" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
" vを二回で行末まで選択
vnoremap v $h
" jjでエスケープ
inoremap <silent> jj <ESC>
" escape by typing jk
inoremap <silent> jk <ESC>
" escape by typing kj
inoremap <silent> kj <ESC>
" SPC+h,l = go to top or tail of sentence
noremap <Space>h ^
noremap <Space>l $

" ====================
" === looking ===
" ====================
" 行番号を表示
set number
" font
set guifont=SF\ Mono\ Square\ 16
set guifontwide=SF\ Mono\ Square\ 16
" theme
colorscheme xcodedark
" force background-color to be black
set background=dark
highlight Normal guibg=black guifg=white
" use 256 colors
set t_Co=256
" シンタックスハイライトを有効
syntax enable
" カーソル行の番号をハイライトする
set cursorline
" visualise beep sound
set visualbell
" indent = smart indent
set smartindent

" ====================
" === search settings ===
" ====================
" 検索のハイライトをESC 2回で消す
nnoremap <ESC><ESC> :nohlsearch<CR>
" 大文字小文字を区別しない
set ignorecase
" 検索文字に大文字がある場合は大文字小文字を区別
set smartcase
" インクリメンタルサーチ
set incsearch
" 対応する括弧などをハイライト表示する
set showmatch
" 対応括弧のハイライト表示を3秒にする
set matchtime=3
" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>
inoremap ""  ""<left>
inoremap $$  $$<left>
inoremap ''  ''<left>
inoremap ()  ()<left>
inoremap <>  <><left>
inoremap []  []<left>
vnoremap :  :s/
vnoremap >  >gv
vnoremap <  <gvnoremap {}  {}<left>
nnoremap + <c-a>
nnoremap - <c-x>

" ====================
" === Tab setting ===
" ====================
" show Tab as '>-'
set list listchars=tab:\▸\-
" replase Tab as half-space
set expandtab
" Tab width in not head of line
set tabstop=2
" Tab width in head of line
set shiftwidth=2
"
