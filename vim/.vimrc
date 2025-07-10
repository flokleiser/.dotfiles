syntax on
set re=0
filetype plugin indent on

set t_u7=
set t_RF=
set t_RB=
set t_RV=
set mouse=a
set number
set clipboard=unnamed
set ignorecase
set smartcase
set termguicolors


nnoremap J 5j
nnoremap K 5k
vnoremap J 5j
vnoremap K 5k
nnoremap L 5l
nnoremap H 5h
vnoremap L 5l
vnoremap H 5h

vnoremap <C-c> "+y
map <C-v> "+p

" remap ctrl i to access the command palette thingy
nnoremap <C-i> q: 

" nmap gh :call CocActionAsync('doHover')<CR>
" nmap gd <Plug>(coc-definition)

:set tabstop=4
:set shiftwidth=4
" :set expandtab

if &term =~ 'xterm'
let &t_EI = "\e[2 q"

let &t_SI = "\e[5 q"

autocmd VimEnter * silent !echo -ne "\e[2 q"
endif

augroup lfconfig
  autocmd!
  autocmd BufRead,BufNewFile ~/.config/lf/lfrc setfiletype vim 
augroup END

call plug#begin()
	Plug 'tomasiser/vim-code-dark'
	Plug 'tpope/vim-commentary'
	Plug 'svermeulen/vim-cutlass'
call plug#end()

let g:tpipeline_autoembed = 1

colorscheme codedark

let g:codedark_transparent = 1

hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi FoldColumn guibg=NONE ctermbg=NONE

hi ColorColumn guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi CursorColumn guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE ctermbg=NONE
hi Folded guibg=NONE ctermbg=NONE
