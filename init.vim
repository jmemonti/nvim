set nu rnu
set tabstop=2
set expandtab
syntax on
set encoding=utf-8
let mapleader = "'"
set shell=zsh
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

"Cursor higthligh current line
set cursorline


call plug#begin('/home/ice/.config/nvim/plugins')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'voldikss/vim-floaterm'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'joshdick/onedark.vim'
	Plug 'preservim/nerdtree'
	Plug 'jiangmiao/auto-pairs'
  Plug 'matze/vim-move'
  Plug 'luochen1990/rainbow'
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'windwp/windline.nvim'
call plug#end()

"Buffer navigation
nnoremap <C-Left> :bprevious<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap <leader> :bd<CR>


"Coc Autocomplete                                                                                                                                                                         
inoremap <expr> <c-space> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"

"Copy paste in the clipboard
vnoremap <C-c> "+y
vnoremap <C-d> "+d

"Neerdtree
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

"Terminal
let g:floaterm_keymap_kill='<F1>'
map <F12> :FloatermNew! cd %:p:h && clear<CR>

"Colorscheme
set termguicolors
colorscheme onedark "catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

"Vim-move lines
let g:move_key_modifier = 'C'

"Rainbow parentesis
let g:rainbow_active = 1


"require plugins configs
lua require('plugs')
