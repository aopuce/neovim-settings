" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
        " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " theme
    Plug 'morhetz/gruvbox'
    " NERDTree
    Plug 'preservim/nerdtree'
    " fzf vim
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    " git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    " Floating terminal
    Plug 'voldikss/vim-floaterm'
    "JS Syntax
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'jparise/vim-graphql'
    " COC Plugin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "syntax
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'tpope/vim-commentary'
    Plug 'preservim/nerdcommenter'
    "sessions
    Plug 'mhinz/vim-startify'
    "Which key
    Plug 'liuchengxu/vim-which-key'
call plug#end()

let g:coc_global_extensions = ['coc-tsserver', 'coc-html', 'coc-css', 'coc-emmet', 'coc-cssmodules', 'coc-json', 'coc-yaml']


