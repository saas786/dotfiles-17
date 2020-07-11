if &compatible
  set nocompatible
end

call plug#begin()

" Colorschemes
Plug 'dracula/vim', {'as': 'dracula'}
" Fuzzy file search via Ctrl-p
Plug 'ctrlpvim/ctrlp.vim'
" mkdir in vim
Plug 'pbrisbin/vim-mkdir'
" Helpers for UNIX
Plug 'tpope/vim-eunuch'
" Git support
Plug 'tpope/vim-fugitive'
" Surround text with brackets, asterisks, HTML tags etc.
Plug 'tpope/vim-surround'
" Ruby support
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
" A custom text object for selecting ruby blocks
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
" Toggle comments
Plug 'vim-scripts/tComment'
" Navigate vim panes identical to tmux panes
Plug 'christoomey/vim-tmux-navigator'
" Auto-pair brackets
Plug 'jiangmiao/auto-pairs'
" Better JSON
Plug 'elzr/vim-json'
" ctags support
Plug 'craigemery/vim-autotag'
" aligning code
Plug 'godlygeek/tabular'
" RSpec
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-dispatch'
" Exchange text blocks
Plug 'tommcdo/vim-exchange'
" Replace text with register
Plug 'vim-scripts/ReplaceWithRegister'
" Same-indent text object
Plug 'kana/vim-textobj-indent'
" Display indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'
" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

if filereadable(expand("~/.config/nvim/bundles.local.vim"))
  source ~/.config/nvim/bundles.local.vim
endif

call plug#end()

