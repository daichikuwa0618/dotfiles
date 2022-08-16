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
  Plug 'sainnhe/everforest'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vimwiki/vimwiki'
  Plug 'tpope/vim-commentary'
call plug#end()

