" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ryanoasis/vim-devicons'
    Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'vim-airline/vim-airline'
    Plug 'flazz/vim-colorschemes'

    Plug 'mbbill/undotree'

    Plug 'vuciv/vim-bujo'

" all about the markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" table mode
    Plug 'dhruvasagar/vim-table-mode'

" file manager
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

call plug#end()
