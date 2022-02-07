let mapleader = "\<space>"

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

if has('nvim')
  " vim-plug
  call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-commentary'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug '/opt/homebrew/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
  Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
  Plug 'tpope/vim-surround'

  call plug#end()

  " plugin config
  runtime init/coc.vim
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
  nnoremap <silent><C-e> :NERDTreeToggle<CR>
  set background=dark
  colorscheme hybrid
endif

set number
set list
set listchars=tab:»-,trail:·
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set clipboard+=unnamed
set autoindent
set smartindent
set hlsearch
set incsearch
set ignorecase
set smartcase
syntax enable
filetype plugin indent on
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-[><C-[> :nohlsearch<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
tnoremap <ESC> <C-\><C-n>
tnoremap <C-[> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
if has('nvim')
  autocmd TermOpen * startinsert
endif

if exists('g:vscode')
  nmap j gj
  nmap k gk
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine
else
  nnoremap j gj
  nnoremap k gk
endif
