call plug#begin('~/.vim/plugged')

Plug 'patstockwell/vim-monokai-tasty'

call plug#end()

" 行番号を表示
set number

" theme
"colorscheme molokai
colorscheme vim-monokai-tasty
set t_Co=256

" シンタックスハイライトを有効
syntax enable

" クリップボードの共有
set clipboard+=unnamed

" スワップファイルを作らない
set noswapfile

" INSERT時はCtrl + {hjkl}でカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" カーソル行の番号をハイライトする
set cursorline

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" vを二回で行末まで選択
vnoremap v $h

" マウスを使う設定
set mouse=a
" sshでログインしている場合などに使う
set ttymouse=xterm2

" 検索のハイライトをESC 2回で消す
nnoremap <ESC><ESC> :nohlsearch<CR>

set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする

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

" jjでエスケープ
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

" SPC+h,l = go to top or tail of sentence
noremap <Space>h ^
noremap <Space>l $

