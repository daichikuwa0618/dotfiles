" NERDTree SETTINGS
" see: https://github.com/preservim/nerdtree#frequently-asked-questions
nmap <C-e> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
" Vim の開始時に NERDTree を開き、カーソルは別の Window に戻す
autocmd VimEnter * NERDTree | wincmd p
" NERDTree がタブ上の唯一の Window であれば、 Vim を終了する
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

