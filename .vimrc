" let arrow keys move cursor across newlines
set whichwrap+=<,>,[,]

" highlight search matches (clear the highlighting with C-l)
set hlsearch
" unlike Vim's default, this coloring won't interfere with syntax highlighting
highlight Search cterm=reverse ctermfg=NONE ctermbg=NONE

" use space, the most prominent key, as the beginning of user-defined commands
let mapleader = "\<Space>"
nnoremap <Leader>q :q<CR>  " surprisingly easier to type than :q<Enter>

syntax on
set mouse=v
filetype plugin indent on
set visualbell
set background=dark
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"set softtabstop=0 noexpandtab
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"let g:gruvbox_italic=1
colorscheme gruvbox
set mouse=a

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


