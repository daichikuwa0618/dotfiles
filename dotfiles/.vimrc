" ====================
" === vim-plug ===
" ====================
call plug#begin('~/.vim/plugged')
  " monokai-tasty theme
  Plug 'patstockwell/vim-monokai-tasty'
  Plug 'ntpeters/vim-better-whitespace'
call plug#end()

"====================
"===  general settings ===
" ====================
" no swap file
set noswapfile
" show inputting command to status
set showcmd
" クリップボードの共有
set clipboard+=unnamed
" マウスを使う設定
set mouse=a
" sshでログインしている場合などに使う
set ttymouse=xterm2
" enable to open other files even when editting buffer
set hidden
" バックスペースの削除の設定
set backspace=indent,eol,start

" ====================
" === moving settings ===
" ====================
" INSERT時はCtrl + {hjkl}でカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
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
" SPC+h,l = go to top or tail of sentence
noremap <Space>h ^
noremap <Space>l $

" ====================
" === looking ===
" ====================
" 行番号を表示
set number
" theme
colorscheme vim-monokai-tasty
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
