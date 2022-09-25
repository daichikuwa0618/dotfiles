" MARK: - Leader

" Learder を <Space> にする
let mapleader = "\<Space>"

" MARK: - normal mode mapping

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
" SPC+h,l = go to top or tail of sentence
noremap <Space>h ^
noremap <Space>l $
" 検索のハイライトをESC 2回で消す
nnoremap <ESC><ESC> :nohlsearch<CR>
" very magic を使う
" See http://stevelosh.com/blog/2010/09/coming-home-to-vim
nnoremap / /\v

" MARK: - insert mode mapping

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
" escape by typing jj
inoremap <silent> jj <ESC>
" escape by typing jk
inoremap <silent> jk <ESC>
" escape by typing kj
inoremap <silent> kj <ESC>
" ペアになるものを連続で入力したときペアの中に移動する
inoremap ""  ""<left>
inoremap $$  $$<left>
inoremap ''  ''<left>
inoremap ()  ()<left>
inoremap <>  <><left>
inoremap []  []<left>

" MARK: - visual mode mapping

" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x
" vを二回で行末まで選択
vnoremap v $h
" very magic を使う
" See http://stevelosh.com/blog/2010/09/coming-home-to-vim
vnoremap / /\v

