set nocompatible        " must be first line
call pathogen#infect()
filetype plugin indent on
scriptencoding utf-8
syntax on

" normal settings
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"end normal

"4-space settings
"set expandtab
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"end 4-space settings

set mouse=a
set term=builtin_ansi
set shortmess+=filmnrxoOtT
set viewoptions=folds,options,cursor,unix,slash
"set virtualedit=onemore
set history=1000
set background=light
set nu
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set foldenable
set nowrap
set autoindent
set pastetoggle=<F12>

nnoremap Y y$
cmap cwd lcd %:p:h

let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Highlight_Tag_On_BufEnter = 1

inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

map <F2> :NERDTreeToggle \| :silent NERDTreeMirror<CR>
"map <C-t> <Esc>:NERDTreeToggle \| :silent NERDTreeMirror<CR>
":map <C-t> <Esc>:NERDTree<CR>
:map <C-m> <Esc>:TlistToggle<CR>
let g:NERDTreeMapOpenVSplit = "v"

if has('autocmd')
    autocmd Filetype java setlocal omnifunc=javacomplete#CompleteParamsInfo'
    autocmd Filetype python setlocal list
    autocmd Filetype python setlocal expandtab
    autocmd Filetype php setlocal list
    autocmd Filetype php setlocal expandtab
    autocmd Filetype phtml setlocal list
    autocmd Filetype phtml setlocal expandtab

	augroup markdown
		au!
		au BufNewFile, BufRead *.md, *.markdown setlocal filetype=ghmarkdown
	augroup END

endif

let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_Color = 2
let g:ConqueTerm_CWInsert = 1

