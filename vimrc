"############### vimrc - RBH ###############
"this will keep vim from line breaking up a word
"set linebreak
set shortmess=a
set nocompatible
set fileformats=unix
set hls
":set term=ansi		"set for some, comment out for others
"set term=dtterm
"if xterm-color =~ 'screen'
"   :set term=screen
"endif
behave xterm
:syntax on
":set number
color delek
set nobackup
set nowritebackup
set shiftwidth=4
set expandtab
set tabstop=4
set ai
"set list
:set sw=4
set showmatch
set ruler
set showcmd
set incsearch
set history=75
set laststatus=2
set hidden
set wmh=0

hi statusline term=inverse,bold cterm=inverse,bold ctermfg=black ctermbg=darkgreen
hi statuslinenc term=inverse,bold cterm=inverse,bold ctermfg=darkgreen ctermbg=darkblue
hi Normal guibg=black guifg=white
hi Search guibg=white guifg=blue
hi IncSearch guibg=red guifg=green

iab rif if (){<cr><tab><cr>}<Esc>dhi<up><up><right><right><right><right><c-r>
iab relse else{<CR><tab><CR>}<Esc>dhi<up><right>
iab rp print "\n";<left><left><left><Esc>i<c-r>
iab bif if [  ];then<cr><tab><cr>fi<Esc>0dw<up><up><right><right><right><right><right>i<c-r>
iab bfor for i in ""; do<cr><tab><cr>done<Esc>0dw<up><up><right><right>
"iab xdate <c-r>=strftime("%Y-%m-%d")<cr>
iab xdate <c-r>=strftime("%Y-%m-%d")
iab mdate <c-r>=strftime("%Y-%m-%d %H:%M%p")<cr>
iab rdate <c-r>=strftime("%A %Y-%m-%d")<cr>
"inoremap ( ()<Esc>i
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
:map! ;; <esc>
nmap // :Explore
nmap \ :set nu!<cr>
nmap == :%s/[ \t]*$//g<cr><c-O>
nmap -- :set paste!<cr>
nmap cc :%s/\r//g<cr>

filetype plugin indent on
