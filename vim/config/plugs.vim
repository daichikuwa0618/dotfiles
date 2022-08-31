" ====================
" === vim-plug ===
" ====================
call plug#begin('~/nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'arzg/vim-colors-xcode'
  Plug 'bryanmylee/vim-colorscheme-icons'
  " Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'lambdalisue/fern.vim'
  Plug 'lambdalisue/fern-git-status.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'patstockwell/vim-monokai-tasty'
  Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sainnhe/everforest'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vimwiki/vimwiki'
call plug#end()

